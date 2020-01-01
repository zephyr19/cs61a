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