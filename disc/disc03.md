# disc 03

1.1:

```python
def multiply(m, n):
    if n == 0:
        return 1
    return m + multiple(m, n-1)
```

1.3:

```python
def hailstone(n):
    print(n)
    if n == 1:
    	return 1
    elif n % 2 == 0:
        return 1 + hailstone(n//2)
    else:
        return 1 + hailstone(3*n + 1)
```

1.4:

```python
def is_prime(n):
    def prime_helper(k):
        if k == n:
            return True
        # always be careful with special case
        # elif n % k == 0:
        elif n % k == 0 or n == 1:
            return False
        else:
            return prime_helper(k+1)
	return prime_helper(2)
```

1.4:

```python
def merge(n1, n2):
    if n2 == 0:
        return n1
    n1 = insert(n1, n2 % 10)
    return merge(n1, n2 // 10)
def insert(number, digit):
    pre, k, behind, last = number, 0, 0, 0
    while pre > 0:
        pre, last = pre // 10, pre % 10
        if digit < last:
            return ((pre * 10 + last) * 10 + digit) * pow(10, k) + behind
		behind, k = behind + last * pow(10, k), k+1
	return number + digit * pow(10, k+1)
```

**1.4 solution:**

```python
def merge(n1, n2):
    if n1 == 0:
    return n2
    elif n2 == 0:
    return n1
    elif n1 % 10 < n2 % 10:
    return merge(n1 // 10, n2) * 10 + n1 % 10
    else:
    return merge(n1, n2 // 10) * 10 + n2 % 10
```



1.6:

```python
def make_func_repeater(f, x):
    def repeat(n):
        if n == 0:
            return x
        else:
            return f(repeat(n-1))
	return repeat
```







