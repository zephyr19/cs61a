# chapter 4 Extend Contents



## Read 4.2 Implicit Sequences

**Lazy: ** **A sequence can be represented without each element being stored explicitly in the memory of the computer.** for example `range()`

- **Iterators:** *can not random access*
  - `iter()` and `next() `(when there is nothing in the iterator, call next() will raise a `StopIteration` exception)
  - If a *dictionary* changes it's length, the old iterator will be invalid.
  - **Lazy:** `map()`, `filter()`, `zip()`, `reversed()`
- **`Iterable`:** Object are `iterable` if they have an `__iter__` method that returns an iterator
- **Generators:** `yield`, `yield from`
- **Python Streams:** *Streams* offer another way to represent sequential data implicitly. A stram is a lazily computed linked list.