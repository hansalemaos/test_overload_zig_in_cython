from __future__ import annotations

try:
    import ziggy

except Exception as e:
    import Cython, setuptools, platform, subprocess, os, sys, time

    iswindows = "win" in platform.platform().lower()
    if iswindows:
        addtolist = []
    else:
        addtolist = ["&"]

    olddict = os.getcwd()
    dirname = os.path.dirname(__file__)
    os.chdir(dirname)
    compile_file = os.path.join(dirname, "ziggy_compile.py")
    subprocess.run(
        " ".join([sys.executable, compile_file, "build_ext", "--inplace"] + addtolist),
        shell=True,
        env=os.environ,
        preexec_fn=None if iswindows else os.setpgrp,
    )
    if not iswindows:
        time.sleep(30)
    import ziggy

    os.chdir(olddict)
