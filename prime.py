num=int(input("Enter the number :--"))
if num>1:
    for i in range(2,num):
        if num %i == 0:
            print(num,"is not prime")
            break
    else:
        print(num,"is prrime")
else:
    print(num,"not prime")


start = int(input("Enter start: "))
end = int(input("Enter end: "))

for num in range(start, end + 1):
    if num > 1:
        for i in range(2, int(num/2) + 1):
            if num % i == 0:
                break
        else:
            print(num, end=" ")
