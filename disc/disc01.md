# Disc 01

**One:**

1. ```python
   def wears_jacket_with_if(temp, raining):
       """
       >>> wears_jacket(90, False)
       False
       >>> wears_jacket(40, False)
       True
       >>> wears_jacket(100, True)
       True
       """
       if raining or temp < 60:
           return True
       return False
   def wears_jacket(temp, raining):
       return raining or temp < 60
   ```

2. infinite loop

3. ```python
   from math import sqrt
   
   def is_prime(n):
       """
       >>> is_prime(10)
       False
       >>> is_prime(7)
       True
       """
       if n == 1:
           return False
       for x in range(2, int(sqrt(n))):
           if n % x == 0:
               return False
       return True
   ```

**Two:**

1. 