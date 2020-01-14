# disc 04

1.1

```python
def count_stair_ways(n):
    if n == 1:
        return 1
    if n == 2:
        return 2
    return count_stair_ways(n-1) + count_stair_ways(n-2)
```

1.2

```python
def count_k(n, k):
    if n < 0:
        return 0
    if n == 0:
        return 1
    total = 0
    for x in range(k):
        total += count_k(n-x-1, k)
	return total
```

2.1 What would Python display

```python
>>> a = [1, 5, 4, [2, 3], 3]
>>> print(a[0], a[-1])
1 3
>>> len(a)
5
>>> 2 in a
False
>>> 4 in a
True
>>> a[3][0]
2
```

2.2

```python
def even_weighted(lst):
    return [value * index for index, value in enumerate(lst) if index % 2 == 0]
```

2.3

```python
def max_product(lst):
    if len(lst) == 0:
        return 1
    product_list = [1]
    for index, value in enumerate(lst):
        for i in range(index+2, max(index+3, len(lst))):
            product_list.append(value * max_product(lst[i:]))
	return max(product_list)
```

