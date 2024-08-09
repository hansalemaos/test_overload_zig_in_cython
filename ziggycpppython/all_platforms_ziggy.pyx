import cython
cimport cython
import os
import numpy as np
cimport numpy as np
import time, subprocess
from libcpp.string cimport string
from libcpp.unordered_map cimport unordered_map
import ctypes

this_folder = os.path.dirname(__file__)
dllpathstr = os.path.normpath(os.path.join(this_folder, 'zigarraytest.dll'))

def compile_it():
    if not os.path.exists(dllpathstr):
        os.chdir(this_folder)
        subprocess.run(
        ["zig", "build-lib", 'zigarraytest.zig', "-dynamic", "-O", "ReleaseFast"],
        shell=True,
        env=os.environ,
        )
        time.sleep(1)

compile_it()
ctypedef fused fusednumbers:
    np.npy_byte
    np.npy_ubyte
    np.npy_short
    np.npy_ushort
    np.npy_int
    np.npy_uint
    np.npy_long
    np.npy_ulong
    np.npy_longlong
    np.npy_ulonglong
    np.npy_intp
    np.npy_uintp
    np.npy_float
    np.npy_double
    np.npy_longdouble

ctypedef void (*func_t)(size_t,size_t,size_t,size_t,size_t,size_t,size_t) noexcept nogil ;

_func_cache = []


cdef unordered_map[string, func_t] get_lookup_dict(str dllpathstr,list funclist,list dtypelist, object argtypes, object restype):
    cdef:
        unordered_map[string, func_t] dtype_lookup


    cta = ctypes.cdll.LoadLibrary(dllpathstr)
    _func_cache.append(cta)
    for npdtype,zigfunction in zip(dtypelist,funclist):
        ctypes_f=getattr(cta, zigfunction)
        ctypes_f.argtypes =  argtypes 
        ctypes_f.restype =  restype 
        dtype_lookup[npdtype]=(<func_t*><size_t>ctypes.addressof(ctypes_f))[0]
    return dtype_lookup


cdef:
    string dllpath = dllpathstr
    unordered_map[string, func_t] dtype_lookup = get_lookup_dict(        
        dllpathstr=dllpathstr,
        funclist=['menor_ou_igual_c_int',
                        'menor_ou_igual_c_int',
                        'menor_ou_igual_c_uint',
                        'menor_ou_igual_c_uint',
                        'menor_ou_igual_c_byte',
                        'menor_ou_igual_c_ubyte',
                        'menor_ou_igual_c_short',
                        'menor_ou_igual_c_ushort',
                        'menor_ou_igual_c_longlong',
                        'menor_ou_igual_c_ulonglong',
                        'menor_ou_igual_c_float',
                        'menor_ou_igual_c_double',
                        'menor_ou_igual_c_longdouble',],
        dtypelist=[
                        b'i',
                        b'l',
                        b'L',
                        b'I',
                        b'b',
                        b'B',
                        b'h',
                        b'H',
                        b'q',
                        b'Q',
                        b'f',
                        b'd',
                        b'g',],
        argtypes=[ctypes.c_size_t] * 7,
        restype = None
                        
                        )


cpdef tuple[np.ndarray,np.ndarray] sepnumbers(fusednumbers[:] a, fusednumbers no, ):
    cdef:
        size_t l = <size_t>&a[0]
        size_t l_len = a.shape[0]
        object dtype =np.asarray(a).dtype
        bytes byte_typepy=dtype.char.encode()
        const char* byte_type=byte_typepy
        np.ndarray[fusednumbers, ndim=1, mode="c", cast=False] n_array_full = np.array([no],dtype=dtype)
        np.ndarray[fusednumbers, ndim=1, mode="c", cast=False] is_le_array_full = np.empty(l_len,dtype=dtype)
        np.ndarray[fusednumbers, ndim=1, mode="c", cast=False] is_gt_array_full = np.empty(l_len,dtype=dtype)
        np.ndarray[size_t, ndim=1, mode="c", cast=False] resultcounter_is_le_array_full = np.zeros(1, dtype="Q")
        np.ndarray[size_t, ndim=1, mode="c", cast=False] resultcounter_is_gt_array_full = np.zeros(1, dtype="Q")
        fusednumbers[:] n_array  = n_array_full
        size_t n = <size_t>&n_array[0]
        fusednumbers[:] is_le_array = is_le_array_full
        fusednumbers[:] is_gt_array = is_gt_array_full
        size_t[:] resultcounter_is_le_array=resultcounter_is_le_array_full
        size_t[:] resultcounter_is_gt_array=resultcounter_is_gt_array_full
        size_t is_le =<size_t>&is_le_array[0]
        size_t is_gt =<size_t>&is_gt_array[0]
        size_t resultcounter_is_le =<size_t>&resultcounter_is_le_array[0]
        size_t resultcounter_is_gt =<size_t>&resultcounter_is_gt_array[0]
    if (dtype_lookup.find(byte_type) == dtype_lookup.end()):
        asnumpy=np.asarray(a)
        return asnumpy[asnumpy<=no],asnumpy[asnumpy>no]
    #n_array_full = np.array([no],dtype=dtype)
    with nogil:
        dtype_lookup[byte_type](n, l, l_len, is_le, is_gt, resultcounter_is_le, resultcounter_is_gt)
    return is_le_array_full[: resultcounter_is_le_array[0]], is_gt_array_full[: resultcounter_is_gt_array[0]]



#import ctypes
#import os
#import subprocess
#import time
#import numpy as np

#ctypesptr = ctypes.c_size_t
#nome_do_zig = "zigarraytest"
#arquivo_zig = f"{nome_do_zig}.zig"
#arquivo_zig_dll = f"{nome_do_zig}.dll"

#nossa_pasta = os.path.dirname(__file__)
#arquivo_zig_full = os.path.normpath(os.path.join(nossa_pasta, arquivo_zig))
#arquivo_zig_dll_full = os.path.normpath(os.path.join(nossa_pasta, arquivo_zig_dll))

#try:
#    cta = ctypes.cdll.LoadLibrary(arquivo_zig_dll_full)
#except Exception as e:
#    os.chdir(nossa_pasta)
#    subprocess.run(
#        ["zig", "build-lib", arquivo_zig, "-dynamic", "-O", "ReleaseFast"],
#        shell=True,
#        env=os.environ,
#    )
#    time.sleep(1)
#    cta = ctypes.cdll.LoadLibrary(arquivo_zig_dll_full)
#cta.menor_ou_igual.argtypes = [ctypesptr] * 7
#cta.menor_ou_igual.restype = None
#menor_ou_igual = cta.menor_ou_igual


#def sep_array_zig_np(a, no):
#    l, l_len = a.ctypes._arr.__array_interface__["data"][0], a.shape[0]
#    n_array = np.array([no], dtype="i")
#    n = n_array.ctypes._arr.__array_interface__["data"][0]
#    is_le_array = np.empty(l_len, dtype="i")
#    is_gt_array = np.empty(l_len, dtype="i")
#    resultcounter_is_le_array = np.array([0], dtype="Q")
#    resultcounter_is_gt_array = np.array([0], dtype="Q")  # usize is 64 bit
#    is_le = is_le_array.ctypes._arr.__array_interface__["data"][0]
#    is_gt = is_gt_array.ctypes._arr.__array_interface__["data"][0]
#    resultcounter_is_le = resultcounter_is_le_array.ctypes._arr.__array_interface__[
#        "data"
#    ][0]
#    resultcounter_is_gt = resultcounter_is_gt_array.ctypes._arr.__array_interface__[
#        "data"
#    ][0]
#    menor_ou_igual(n, l, l_len, is_le, is_gt, resultcounter_is_le, resultcounter_is_gt)
#    return is_le_array[: resultcounter_is_le_array[0]], is_gt_array[
#        : resultcounter_is_gt_array[0]
#    ]


#random_array = np.random.randint(-100, 100, 1000, dtype="i")
#i=5
#a,b=sep_array_zig_np(random_array, i)
#print(f'{random_array=}')
#print(f"{a=}")
#print(f"{b=}")
