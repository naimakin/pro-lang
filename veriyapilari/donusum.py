def donusum(a):
    b = []
    for i in a:
        b = b + [i]

    if b[0]=="0":
        if b[1]=="b":
            print ("binary: ",int(a,2))
        elif b[1]=="x":
            print ("hexadecimal : ", int(a,16))
        else:
            print("octal : " ,int(a,8))
    else:
        print("decimal : " , int(a))

donusum("0x1011")
