# Author: Michael Allen
# Date: 2025-11-28
# Problem: Narcissistic Number

def narcissistic(value):
    digits = str(value)
    power = len(digits)
    total = sum(int(d) ** power for d in digits)
    return total == value
