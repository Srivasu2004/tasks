import mysql.connector

# ---------- connection ----------

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Vasu@2004"

)

cur = con.cursor()

# ---------- create database ----------

cur.execute("CREATE DATABASE IF NOT EXISTS logindb")
cur.execute("USE logindb")

# ---------- create table ----------

cur.execute("""
CREATE TABLE IF NOT EXISTS users(
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50)
)
""")

print("Table Ready")


# ---------- register ----------

def register():

    uname = input("Enter username: ")
    pwd = input("Enter password: ")

    try:
        sql = "insert into users values(%s,%s)"
        cur.execute(sql, (uname, pwd))
        con.commit()

        print("Registered Successfully")

    except:
        print("Username already exists")


# ---------- login ----------

def login():

    uname = input("Enter username: ")
    pwd = input("Enter password: ")

    sql = "select * from users where username=%s and password=%s"
    cur.execute(sql, (uname, pwd))

    data = cur.fetchone()

    if data:
        print("Login Success")
    else:
        print("Invalid username or password")


# ---------- show users ----------

def show_users():

    cur.execute("select * from users")

    data = cur.fetchall()

    for i in data:
        print(i)


# ---------- menu ----------

while True:

    print("\n1 Register")
    print("2 Login")
    print("3 Show Users")
    print("4 Exit")

    ch = int(input("Enter choice: "))

    if ch == 1:
        register()

    elif ch == 2:
        login()

    elif ch == 3:
        show_users()

    elif ch == 4:
        break
