class Student:
    school_name="XYZ School"
    def set_details(s):
        s.name="Vamsi"
        s.marks=85
    def display(s):
        print("name:",s.name)
        print("marks:",s.marks)
        print("School name:",Student.school_name)
obj=Student()
obj.set_details()
obj.display()
class Employee:
    company="Infosys"
    def set_data(p):
        p.name="Ravi"
        p.salary=20000
    def increase_salary(p):
        p.salary += 5000
    def display(p):
        print("Name:",p.name,
              "salary:",p.salary,
              "company: ",Employee.company)
xyz=Employee()
print(xyz,xyz.set_data(),xyz.increase_salary(),xyz.display())


class Mobile:
    brand="Apple"
    def set_details(g):
        g.model="iPhone 14"
        g.price=80000
    def discount(g):
        g.price=g.price-(g.price * 10/100)
    def show_details(g):
        print("name: ",Mobile.brand,"model: ",g.model,"price: ",g.price)
hi=Mobile()
hi.brand
hi.set_details()
hi.discount()
hi.show_details()
