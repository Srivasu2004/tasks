n=18
for i in range(1,n+1):
    if n % i==0:
        print(i)
# the firstn question answer
a = [2, 3, 4, 2, 3, 4, 5, 7]

output = []

for i in a:
    if i not in output:
        output.append(i)

print(output)
# secound question answer
a = [7, 4, 7, 23, 10, 6]

def is_prime(n):
    if n < 2:
        return False

    for i in range(2, n):
        if n % i == 0:
            return False

    return True

for num in a:
    if is_prime(num + 1):
        print(num, end=" ")
# third answer
a = "aaabbaaccdd"

result = ""

visited = []

for ch in a:
    if ch not in visited:
        count = a.count(ch)
        result = result + ch + str(count)
        visited.append(ch)

print(result)