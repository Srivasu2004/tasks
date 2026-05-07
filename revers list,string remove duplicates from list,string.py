s = "hello"
rev = ""

for i in s:
    rev = i + rev

print("Reversed string:", rev)

lst = [10, 20, 30, 40, 50]

for i in range(len(lst)-1, -1, -1):
    print(lst[i])

s = "programming"
result = ""

for i in s:
    if i not in result:
        result = result + i

print("New string:", result)


lst = [1, 2, 2, 3, 4, 3, 5]
new_list = []

for i in lst:
    if i not in new_list:
        new_list.append(i)

print("New list:", new_list)
