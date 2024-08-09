export fn menor_ou_igual_c_byte(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_char;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_ubyte(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_char;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_short(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_short;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_ushort(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_ushort;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_int(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_int;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_uint(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_uint;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_long(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_long;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_ulong(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_ulong;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_longlong(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_longlong;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_ulonglong(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]c_ulonglong;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_intp(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]isize;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_uintp(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]usize;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_float(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]f32;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_double(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]f64;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}

export fn menor_ou_igual_c_longdouble(n: usize, l: usize, l_len: usize, is_le: usize, is_gt: usize, resultcounter_is_le: usize, resultcounter_is_gt: usize) void {
    const T1 = [*]f128;
    const l_array: T1 = @ptrFromInt(l);
    var is_le_array: T1 = @ptrFromInt(is_le);
    var is_gt_array: T1 = @ptrFromInt(is_gt);
    var resultcounter_is_le_array: [*]usize = @ptrFromInt(resultcounter_is_le);
    var resultcounter_is_gt_array: [*]usize = @ptrFromInt(resultcounter_is_gt);
    const n_array: T1 = @ptrFromInt(n);
    const nvar = n_array[0];
    for (0..l_len) |it0| {
        if (l_array[it0] > nvar) {
            is_gt_array[resultcounter_is_gt_array[0]] = l_array[it0];
            resultcounter_is_gt_array[0] += 1;
        } else {
            is_le_array[resultcounter_is_le_array[0]] = l_array[it0];
            resultcounter_is_le_array[0] += 1;
        }
    }
}
