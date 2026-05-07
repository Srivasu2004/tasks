name=input("enter the name of thr person:--")
email=input("enter the mail of the person:--")
password=input("enter the password:--")
c_password=input("enter the confirm password:-")
def register(n,e,p,cp):
    def log():
        def dashboard(n):
            print(f"welcome{n}")
        emaill=input("enter the mail of the person:--")
        passwordl=input("enter the password:--")
        if emaill== e and passwordl ==p:
            dashboard(n)
        else:
            print("invalid credinals")

    if p== cp:
        log()
    else:
        print("i want new one")
register(name,email,password,c_password)