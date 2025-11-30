'''
Author: Michael Allen
Date: 2025-11-29
Problem: Descending Order (Heapsort)
'''
import heapq


def descending_order(num):
    digits = [-int(d) for d in str(num)] # negate for max-heap behavior
    heapq.heapify(digits) # O(n) heapify
    result = ''
    while digits:
        result += str(-heapq.heappop(digits)) # pop smallest (Most negative = largest original)
    return int(result)
    