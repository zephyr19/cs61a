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

```pyth
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

```pyt
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









