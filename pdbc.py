
import mysql.connector


conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Vasu@2004",
    database="student_d"
)

cursor = conn.cursor()


cursor.execute("""
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
)
""")

while True:
    print("\n1.Insert")
    print("2.View")
    print("3.Update")
    print("4.Delete")
    print("5.Exit")

    choice = int(input("Enter Choice: "))

    if choice == 1:
        name = input("Enter Name: ")
        age = int(input("Enter Age: "))
        course = input("Enter Course: ")

        sql = "INSERT INTO students(name,age,course) VALUES(%s,%s,%s)"
        val = (name, age, course)
        cursor.execute(sql, val)
        conn.commit()
        print("Data Inserted Successfully")

    elif choice == 2:
        cursor.execute("SELECT * FROM students")
        data = cursor.fetchall()

        for row in data:
            print(row)

    elif choice == 3:
        sid = int(input("Enter ID to Update: "))
        name = input("Enter New Name: ")

        sql = "UPDATE students SET name=%s WHERE id=%s"
        val = (name, sid)
        cursor.execute(sql, val)
        conn.commit()

        print("Data Updated Successfully")

    elif choice == 4:
        sid = int(input("Enter ID to Delete: "))

        sql = "DELETE FROM students WHERE id=%s"
        val = (sid,)
        cursor.execute(sql, val)
        conn.commit()

        print("Data Deleted Successfully")

    elif choice == 5:
        break

    else:
        print("Invalid Choice")

cursor.close()
conn.close()