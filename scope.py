def outer():
    x = 10

    def inner():
        nonlocal x
        x = 20
        print("Inner:", x)

    inner()
    print("Outer:", x)

outer()
def test():
    a = 50   # local variable
    print(a)

test()
count = 10

def change():
    global count
    count = 20
    print("Inside:", count)

change()
print("Outside:", count)
x = "Global"

def outer():
    x = "Enclosing"

    def inner():
        x = "Local"
        print(x)

    inner()

outer()