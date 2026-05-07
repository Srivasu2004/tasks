email="vasu@gmail.com"
password=input("enter the password:--")
name=input("Enter the name:--")
print("1. user register")
print("2. user login")
print("3. user details")
c=input("choose one of the emong:--")
def detailschange():
    global email
    e=input("Enter the new mail")
    print(e,password,"hello")
def log():
    emaill=input("Enter the email:--")
    passl=input("enter the passl:--")
    if emaill == email and passl == password:
        dashboard(name)
    else:
        print("incorrect password")
def dashboard(name):
    print(f"welcome{name}")
    

if c=="1":
    name=input("Enter the name of the person:--")
    email=input("Enter the mail of person")
    password=input("Enter the pass of person")
    c_password=input("Enter the confirm passw")
    def register(n,e,p,c_p):
        if p==c_p:
            print(n,e,p,c_p)
        else:
            print("the p and c_p is worng")
    
       
    register(name,email,password,c_password)
elif c == "2":
    log()
elif c=="3":
    detailschange()
else:
    print("invalid credinals")
    


 
  