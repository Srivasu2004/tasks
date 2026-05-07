import json
print("1. addding data")
print("2. reading data")
print("3. updating data")
print("4. delete data")
print("5. exit data")
def load_data():
    abc=open("student.json","r")
    return json.load(abc)
def dump_data(x):
    xyz=open("student.json","w")
    json.dump(x,xyz)
def add_data():
    n=input("enter the name")
    a=int(input("enter the age of person:--"))
    allstu=load_data()
    new_data={"name":n,"age":a}
    allstu.append(new_data)
    dump_data(allstu)
    print("add student successfully")
def veiw_data():
    allstu=load_data()
    for i in allstu:
        print(i["name"],i["age"])
def dele_data():
    allstu=load_data()
    veiw_data()
    i=int(input("ENter the student id:--- "))
    indexNum=i-1
    allstu.pop(indexNum)
    dump_data(allstu)
    print(f"student got deleted whoes having id {i}")
def upd_data():
    allstu=load_data()
    dump_data(allstu)
    i=int(input("enter the updated id"))
    name=input("Enter the updated name")
    indexNum=i-1
    allstu[indexNum]={"name":name,"age":age}
    dump_data(allstu)
    print("student updated succesfully:--")

while True:
    o = int(input("choose the above one of person:--"))
    if o == 1:
        add_data()
    elif o == 2:
        veiw_data()
    elif o == 3:
        upd_data()
    elif o==4:
        dele_data()
    else:
        break;