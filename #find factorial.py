num=int(input("enter number:--"))
rell=1
if num <0:
    print("not defined the number")
else:
    for i in range(1,num+1):
        rell *=i
    print("fact",num,"is",rell)

def factorial(n):
    if n<0:
        return "not found"
    reels=1
    for i in range(1,n+1):
        reels *=i
    return reels
van=int(input("Enter value"))
print("factorila find",factorial(van))