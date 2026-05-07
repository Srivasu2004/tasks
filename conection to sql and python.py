import mysql.connector

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Vasu@2004",
    database="vsr"
)

cursor = db.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS students41
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50)
)
""")

def add_student():
    name = input("Enter name: ")
    age = int(input("Enter age: "))
    email = input("Enter email: ")

    query = "INSERT INTO students41(name, age, email) VALUES(%s, %s, %s)"
    values = (name, age, email)

    cursor.execute(query, values)
    db.commit()

    print(" Student added successfully!")


def view_students():
    cursor.execute("SELECT * FROM students41")
    result = cursor.fetchall()

    print("\n--- Student Records ---")
    for row in result:
        print(f"ID: {row[0]}, Name: {row[1]}, Age: {row[2]}, Email: {row[3]}")

def update_student():
    student_id = int(input("Enter student ID to update: "))
    new_name = input("Enter new name: ")
    new_age = int(input("Enter new age: "))
    new_email = input("Enter new email: ")

    query = """
    UPDATE students41 
    SET name=%s, age=%s, email=%s 
    WHERE id=%s
    """
    values = (new_name, new_age, new_email, student_id)

    cursor.execute(query, values)
    db.commit()

    print("Student updated successfully!")

def delete_student():
    student_id = int(input("Enter student ID to delete: "))

    query = "DELETE FROM students41 WHERE id=%s"
    cursor.execute(query, (student_id,))
    db.commit()

    print(" Student deleted successfully!")


while True:
    print("1. Add Student")
    print("2. View Students")
    print("3. Update Student")
    print("4. Delete Student")
    print("5. Exit")

    choice = int(input("Enter your choice: "))

    if choice == 1:
        add_student()
    elif choice == 2:
        view_students()
    elif choice == 3:
        update_student()
    elif choice == 4:
        delete_student()
    elif choice == 5:
        print("Exiting...")
        break
    else:
        print("Invalid choice! Try again.")

