# disc 05

1.1

```python
def height(t):
    if is_leaf(t):
        return 0
    heights = []
    for b in branches(t):
        heights.append(1+height(b)) # WRONG HERE
	return max(heights)
```

```python
# Solution
	if is_leaf(t):
        return 0
    return 1 + max([height(branch) for branch in branches(t)])
```



1.2

```python
def square_tree(t):
    if is_leaf(t):
        return tree(square(label(t)))
    new_branches = []
    for b in branches(t):
        new_branches.append(square_tree(b))
	return tree(square(label(t)), new_branches)
```

```python
# Solution
    sq_branches = [square_tree(branch) for branch in branches(t)]
    return tree(label(t)**2, sq_branches)
```



1.3

```python
def find_path(tree, x):
    if is_leaf(tree) and label(tree) != x:
        return None
    else:
        path = [label(tree)] + [find_path(b, x) for b in braches(tree)][0]
        if label(tree) == x:
            return path
# WRONG ANSWER
```

```python
# Solution
	if label(tree) == x:
        return [label(tree)]
    else:
        path = [find_path(b, x) for b in branches(tree)]
        if path:
            return [label(x)] + path
```



2.1 WWPD

```python
>>> lst1 = [1, 2, 3]
>>> lst2 = lst1
>>> lst1 is lst2
True
>>> lst2.extend([5, 6])
>>> lst1[4]
6
>>> lst1.append([-1, 0, 1])
>>> -1 in lst2
False
>>> lst2[5]
[-1, 0, 1]
>>> lst3 = lst2[:]
>>> lst3.insert(3, lst2.pop(3))
>>> len(lst1)
5
>>> lst1[4] is lst3[6]
True
>>> lst3[lst2[4][1]]
1
>>> lst1[:3] is lst2[:3]
False
>>> lst1[:3] == lst3[:3]
True
```

2.2

```python
def add_this_many(x, el, lst):
    return lst + [el] * lst.count(x)
```

2.3

```python
def group_by(s, fn):
    group = {}
    for v in s:
        k = fn(v)
        if key not in group:
            group[k] = [v]
		else:
            group[k].append(v)
	return group
```

3.2

```python
def memory(n):
    def change(fn):
        nonlocal n
        n = fn(n)
        return n
    return change
```





















