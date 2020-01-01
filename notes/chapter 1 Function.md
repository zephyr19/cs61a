# chapter 1 Function

## lab00

#### Main terminal commands

`cd` / `ls` / `mkdir`/ `pwd` / `mv` / `unzip` / `start .`

see details in *terminal.md*

### getting started in python

`"""`: docstring, which is a description of what the function is supposed to do.

`>>>`: doctests, used in terminal `python -m doctest filename.py`



## Read 1.1

##### Debug: Learning to interpret errors and diagnose the cause of unexpected errors

- Test incrementally (Incremental testing)
- Isolate errors (modular design)
- Check your assumptions (precise assumptions)
- Consult others (team work)



## Functions

### Anatomy of a Call Expression

`add(2, 3)` :operator(operand, operand)

### abstraction intuition

Assignment is a simple means of abstraction: binds name to values

Function definition is a more powerful means of abstraction: binds names to expression

### Pure Function & Non-Pure Function

pure function: just return values

non-pure: have some side effects

## Names

three types of names: built-in function, assignment, and def statement

>  **Execution rule for assignment statements:**
>
> 1. Evaluate all expressions to the right of = form left to right
> 2. Bind all names to the left of = to the resulting values in the current frame

## Read 1.3

```pyto
def square(x):
	# x is called formal parameter
	return mul(x, x)
```

### Choosing Names:

1. Function names are lowercase, with words separated by underscores. Descriptive names are encouraged.
2. Function names typically evoke operations applied to arguments by the interpreter (e.g., `print`, `add`, `square`) or the name of the quantity that results (e.g., `max`, `abs`, `sum`).
3. Parameter names are lowercase, with words separated by underscores. Single-word names are preferred.
4. Parameter names should evoke the role of the parameter in the function, not just the kind of argument that is allowed.
5. Single letter parameter names are acceptable when their role is obvious, but avoid "l" (lowercase ell), "O" (capital oh), or "I" (capital i) to avoid confusion with numerals.

## Control

```pyt
""" if statement """
if x < 0:  # Clause
	return -x  # Clause
else:
	return x # Suite
```

### Boolean Contexts

False values in Python: `False`, `0`, `''`, `None`

### lab01

"""

\>\>\> 1 and 3

3

"""

















