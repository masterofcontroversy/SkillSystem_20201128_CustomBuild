import sys
import binascii

with open(sys.argv[1], "rb") as f:
    foo = f.read(0xa2a4)
    bar = binascii.hexlify(foo, "-")
    bar = str(bar).split("-")
    
    i = -1
    ret = ""
    
    test = "testing".replace("t", "")
    
    while i >= -4:
        ret += bar[i].replace("'", "")
        i -= 1
    
    ret = int(ret,16) - 0x8000000
        
    
    with open("NewTextTable.event", "w") as f:
        f.write("#define NewTextTable " + str(hex(ret)) + "\n")
        f.write("#define TextTable NewTextTable")
