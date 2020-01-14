1.6：

```python
def make_keeper(n):
    """Returns a function which takes one parameter cond and prints out
    all integers 1..i..n where calling cond(i) returns True.
    >>> def is_even(x):
    ... # Even numbers have remainder 0 when divided by 2.
    ... return x % 2 == 0
    >>> make_keeper(5)(is_even)
    2
    4
    """
    def do_keep(f):
        k = 1
        while k < n:
            if f(k):
                print(k)
            k += 1
	return do_keep
```

1.7:

```python
def and_add(f, n):
    """Return a new function. This new function takes an
    argument x and returns f(x) + n.
    >>> def square(x):
    ... return x * x
    >>> new_square = and_add(square, 3)
    >>> new_square(4) # 4 * 4 + 3
    19
    """
    return lambda x: f(x) + n
```

