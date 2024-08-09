import ziggycpppython
import numpy as np
c = np.random.randint(1, 127, 50, dtype="i")
dtypes = [
    "i",
    "l",
    "L",
    "I",
    "b",
    "B",
    "h",
    "H",
    "q",
    "Q",
    "f",
    "d",
    "g",
]
for d in dtypes:
    tmp = c.astype(d)
    a, b = ziggycpppython.ziggy.sepnumbers(tmp, 5)
    print(d, a, b)