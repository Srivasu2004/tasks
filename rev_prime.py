num = int(input("Enter a number: "))

reverse = 0

while num > 0:
    digit = num % 10
    reverse = reverse * 10 + digit
    num = num // 10

print("Reversed Number =", reverse)
num = int(input("Enter a number: "))

reverse = 0
even_sum = 0
odd_sum = 0

while num > 0:
    digit = num % 10

    # Reverse the number
    reverse = reverse * 10 + digit

    # Check even or odd
    if digit % 2 == 0:
        even_sum += digit
    else:
        odd_sum += digit

    num = num // 10

print("Reversed Number =", reverse)
print("Sum of Even Digits =", even_sum)
print("Sum of Odd Digits =", odd_sum)
i = 1

while i <= 100:
    if i % 5 == 0:
        print(i, end=" ")
    i += 1