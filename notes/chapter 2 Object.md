# chapter 2 Object

## Read 2.1 Native Data Types

 `int`, `float`, `bool`, `complex`, and more



## Read 2.2 Data Abstraction

- **data abstraction:** **isolates** how a compound data value is **used** from the details of how it is **constructed**
- **abstraction barriers:** do not violate abstraction barriers. Otherwise, when you want to change the representation of abstract data, you have to rewrite the whole file!



## Read 2.3 Sequences

A sequence is an ordered collection of values, which has a length and supports element selection

- **Lists:** the `add` and `mul` operator
  - `[[]] * 4 ` will create a nested empty list, **but** all the inside list will point to the same memory area
  - So, you should using `[[] for _ in range(4)]`
- **List Comprehensions**: [<map expression> for <name> in <sequence expression> if <filter expression>]
- **Aggregation:** `sum`, `min`, `max`
- built-in functions: `map`, `filter`, `reduce`
- `range`

- `for` statement:

  ```python
  for <name> in <expression>:
      <suite>
  ```

  - <expression> must yield an iterable value
  - after `for` statement is executed, the <name> will be bound to the last element of the <expression>
  - sequence unpacking

- **Sequence Abstraction:**

  - Membership: `in`,  `not in`
  - Slicing: will create a new list and return it.

- **String:**
  - A single character is a string, Python do not have `char` data type.
  - also have `add` and `mul` operator
- **Trees:**
  - *closure property* permits us to create hierarchical structures, like lists
  - 







