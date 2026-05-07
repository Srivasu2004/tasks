class product:
    def __init__(self):
        self.__price=0
    def set_price(self,price):
        self.__price=price
        if price > 0:
            print("that it is valid")
        else:
            print("that it will not valid")
    def apply_discount(self,percentage):
        if 0 < percentage <= 50:
            dicount=(percentage /100)*self.__price
            self.__price =self.__price- dicount
        else:
            print("Discount should be b/w 0 to 50")
    def get_price(self):
        return self.__price
o=product()
o.set_price(2000)
o.apply_discount (25)
print("final output",o.get_price())
            
class Mobile:
    def __init__(self):
        self.__password = ""

    def set_password(self, pwd):
        pwd = str(pwd)   
        if len(pwd) >= 4:
            self.__password = pwd
            print("Valid password set")
        else:
            print("Password must be at least 4 characters")

    def unlock(self, pwd):
        if self.__password == str(pwd):
            print("Mobile unlocked")
        else:
            print("Incorrect credentials")

    def change_password(self, old_pswd, new_pswd):
        if self.__password == str(old_pswd):
            if len(str(new_pswd)) >= 4:
                self.__password = str(new_pswd)
                print("Password changed successfully")
            else:
                print("New password must be at least 4 characters")
        else:
            print("Old password is incorrect")
p = Mobile()
p.set_password(2004)
p.unlock(2004)
p.change_password(2004, 312004)
p.unlock(312004)


class Employee:
    def __init__(self):
        self.__salary = 0
        self.__designation = ""
        self.__allowed_roles = ["Manager", "Developer", "HR"]

    
    def set_salary(self, salary):
        if salary > 0:
            self.__salary = salary
            print("Salary set successfully")
        else:
            print("Invalid salary. Must be greater than 0")


    def get_salary(self):
        return self.__salary

    
    def set_designation(self, role):
        if role in self.__allowed_roles:
            self.__designation = role
            print("Designation set successfully")
        else:
            print("Invalid designation")


    def get_designation(self):
        return self.__designation

    
    def increment_salary(self, percent):
        if 0 < percent <= 30:
            increment = (percent / 100) * self.__salary
            self.__salary += increment
            print("Salary incremented")
        else:
            print("Increment percentage should be between 0 and 30")

emp = Employee()

emp.set_salary(50000)
emp.set_designation("Developer")

print("Salary:", emp.get_salary())
print("Designation:", emp.get_designation())

emp.increment_salary(20)
print("Updated Salary:", emp.get_salary())
