# Guer 01

1.6

```python
def path(m, n):
    if m == 1 or n == 1:
        return 1
    return path(m-1, n) + path(m, n-1)
```

1.7

```python
def merge(s1, s2):
    if s1 == []:
        return s2
    elif s2 == []:
        return s1
    elif s1[0] < s2[0]:
        return [s1[0]] + merge(s1[1:], s2)
    elif s1[0] > s2[0]:
        return [s2[0]] + merge(s1, s2[1:])
```

1.8

```python
def mario_number(level):
    def ways(n):
        if n == len(level) - 1:
            return 1
        if n >= len(level) or level[n] == 'P':
            return 0
        return ways(n+1) + ways(n+2)
    return ways(0)
```

