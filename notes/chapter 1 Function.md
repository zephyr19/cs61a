# chapter 1 Function

## lab00

#### Main terminal commands

`cd` / `ls` / `mkdir`/ `pwd` / `mv` / `unzip` / `start .`

see details in *terminal.md



## Read 1.1 Debug

##### Debug: Learning to interpret errors and diagnose the cause of unexpected errors

- Test incrementally (Incremental testing)
- Isolate errors (modular design)
- Check your assumptions (precise assumptions)
- Consult others (team work)



## Functions

#### abstraction intuition

**Assignment** is a simple means of abstraction: **binds name to values**

**Function** definition is a more powerful means of abstraction: **binds names to expression**

#### Pure Function & Non-Pure Function

pure function: just return values

non-pure: have some side effects

## Names

three types of names: built-in function, assignment, and def statement

>  Execution rule for **assignment statements**:
>
> 1. Evaluate all expressions to the right of = form left to right
> 2. Bind all names to the left of = to the resulting values in the current frame

## Read 1.3 Defining New Functions

```pyto
def square(x):
	# x is called formal parameter
	return mul(x, x)
```

#### Choosing Names:

1. Function names are **lowercase**, with **words separated by underscores**. 
2. Function names typically evoke operations applied to arguments by the interpreter (e.g., `print`, `add`, `square`) or the name of the quantity that results (e.g., `max`, `abs`, `sum`).
3. Parameter names should evoke the role of the parameter in the function, not just the kind of argument that is allowed.
4. Single letter parameter names are acceptable when their role is obvious, but avoid "l" (lowercase ell), "O" (capital oh), or "I" (capital i) to avoid confusion with numerals.



### lab01

```python
>>> 1 and 3
3
```



## Reading 1.4 Designing Functions

#### Good Functions

- Each function should have exactly **one job**.
  - be identifiable with a short name
  - characterize in a single line of text
- **Don't repeat yourself** is a central tenet of software engineering.
  - If you find yourself coping and pasting a block of code, you have probably found an opportunity for functional abstraction
- Define functions **generally**.
  - Squaring is not in the Python Library precisely because it's a special case of the `pow` function.

#### Documentation

When writing Python programs, include **docstrings for all but the simplest** functions.

**The code is written only once, but often read many times.**

```python
def pressure(v, t, n):
    """Compute the pressure in pascals of an ideal gas.

    Applies the ideal gas law: http://en.wikipedia.org/wiki/Ideal_gas_law

    v -- volume of gas, in cubic meters
    t -- absolute temperature in degrees kelvin
    n -- particles of gas
    """
    k = 1.38e-23  # Boltzmann's constant
    return n * k * t / v
```

The **first line:** **describes the job** of the function in one line.

The **following lines:** describe **arguments** and **clarify the behavior** of the function.



## Reading 1.5 Control

```python
""" if statement """
if x < 0:  # Clause
	return -x  # Clause
else:
	return x # Suite
```

#### Boolean Contexts

False values in Python: `False`, `0`, `''`, `None`

#### Testing

- **Assertions:**

  ```pyth
  assert fib(8) == 13, 'The 8th Fibonacci number should be 13'
  ```

  the file used for testing names 'XX_test.py'

- **Doctests `>>>`:** 

  - : used in terminal `python -m doctest filename.py`



## Reading 1.6 Higher-Order Function

#### Higher Order Function

**takes a function** as an argument **or** **returns a function** 

- Express general methods of computation
- Remove repetition from programs
- Separate concerns among functions

```python
def summation(n, term):
    total, k = 0, 1
    while k <= n:
        total, k = total + term(k), k + 1
    return total

def cube(x):
    return x*x*x

def sum_cubes(n):
    return summation(n, cube)

def identity(x):
    return x

def sum_naturals(n):
    return summation(n, identity)
```

#### Nested Definitions

advantages of **lexical scope**:

- The names of a local function do not interfere with names external to the function
- A local function can access the environment of the enclosing function

#### Functions as Returned Values

**The return function maintains parent environment.**

#### Currying

**use higher-order functions to convert a function that takes multiple arguments into a chain of functions that each take a single argument.**

#### Function Decorators

```python
@trace
def triple(x):
    return 3 * x

# equal to:

def triple(x):
    return 3 * x
triple = trace(triple)
```

## Recursive Function

**Definition**: A function is called *recursive* if the body of the function calls the function itself, either directly or indirectly.

**How to implement:** 

- Find the **base case:** such as the simplest input or the stop case
- Figure out how to call recursive function in a simpler case

**Remember:** always check for base case(which is usually the simplest input possible to the function or the stopping condition)

**Verifying correctness:** 

- assume `recursive_func(n-1)`  is correct
- make sure it won't running forever

**Tree Recursion:** call itself more than once. **Example below:**

```python
def count_partions(n, m):
    """Count the ways to partition n using parts up to m."""
    if n == 0:
        return 1
    elif n < 0:
        return 0
    elif m == 0:
        return 0
    else:
        with_m = count_partions(n-m, m)
        without_m = count_partions(n, m-1)
        return with_m + without_m
```

\*\* **Question in disc03:** \*\*

```python
def merge(n1, n2):
    """ Merges two numbers
    >>> merge(31, 42)
    4321
    >>> merge(21, 0)
    21
    >>> merge (21, 31)
    3211
    """
    # Your implementation is really suck
    # Not get the hang of designing recursive functions
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

```python
# Solution
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

\*\* **Question in guer01:** \*\*

```python
def mario_number(level):
    """Return the number of ways that Mario can perform a sequence of steps
    or jumps to reach the end of the level without ever landing in a Piranha
    plant. Assume that every level begins and ends with a dash.
    >>> mario_number('-P-P-') # jump, jump
    1
    >>> mario_number('-P-P--') # jump, jump, step
    1
    >>> mario_number('--P-P-') # step, jump, jump
    1
    >>> mario_number('---P-P-') # step, step, jump, jump or jump, jump, jump
    2
    >>> mario_number('-P-PP-') # Mario cannot jump two plants
    0
    >>> mario_number('----') # step, jump ; jump, step ; step, step, step
    3
    >>> mario_number('----P----')
    9
    >>> mario_number('---P----P-P---P--P-P----P-----P-')
    180
    """
```

```python
# solution
# **Generalization!!**
# transform the question!
    def ways(n):
        if n == len(level) - 1:
            return 1
        if n >= len(level) or level[n] == 'P':
            return 0
    return ways(n+1) + ways(n+2)
return ways(0)
```









