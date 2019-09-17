/*
To run:

PYTHONPATH=. swift python_interop.swift

If you don't set PYTHONPATH, then it won't know to look for hanzi module in
current directory

*/
import Python

print(Python.version)

let sys = Python.import("sys")
print(sys.version_info)
print(sys.version_info.major)
print(sys.version_info.minor)
print(sys.exec_prefix)

sys.path.forEach({ print($0) })

let hanzi = Python.import("hanzi")
print(hanzi.random_hanzi())
