# disc 06

1.2

```python
def nonlocalist():
    get = lambda x: "Index out of range!"
    def prepend(value):
        nonlocal get
        f = get
        def get(i):
            if i == 0:
                return value
            return f(i-1)
	return prepend, get # Error Here!!
```

```python
# Solution
	return prepend, lambda x: get(x)
""" If a function return multiple values, they will be packed in a Tuple. So when the return values exist function, it will be immutable """
```

2.1  WWPD

```python
>>> snape = Professor("Snape")
>>> harry = Student("Harry", snape)
There are now 1 students
>>> harry.visit_office_hours(snape)
Thanks, Snape
>>> harry.visit_office_hours(Professor("Hagrid"))
Thanks, Hagrid
>>> harry.understanding
2
>>> [name for name in snape.students]
['Harry']
>>> x = Student("Hermione", Professor("McGonagall")).name
There are now 2 students
>>> x
'Hermione'
>>> [name for name in snape.students]
['Harry']
```

2.2

```python
class Email:
    """Every email object has 3 instance attributes: the
    message, the sender name, and the recipient name.
    """
    def __init__(self, msg, sender_name, recipient_name):
        self.msg = msg
        self.sender_name = sender_name
        self.recipient_name = recipient_name
        
class Server:
    """Each Server has an instance attribute clients, which
    is a dictionary that associates client names with
    client objects.
    """
    def __init__(self):
        self.clients = {}
    def send(self, email):
        """Take an email and put it in the inbox of the client
        it is addressed to.
        """
        self.clients[email.recipient_name].receive(email)
    def register_client(self, client, client_name):
        """Takes a client object and client_name and adds it
        to the clients instance attribute.
        """
        self.clients[client_name] = client

class Client:
    """Every Client has instance attributes name (which is
    used for addressing emails to the client), server
    (which is used to send emails out to other clients), and
    inbox (a list of all emails the client has received).
    """
    def __init__(self, server, name):
        self.inbox = []
        self.server = server
        self.name = name
        self.server.register_client(self, self.name)
    def compose(self, msg, recipient_name):
        """Send an email with the given message msg to the
        given recipient client.
        """
        self.server.send(Email(msg, self.name, recipient_name))
    def receive(self, email):
        """Take an email and add it to the inbox of this
        client.
        """
        self.inbox.append(email)
```

3.1

```python
class Cat(Pet):
    def __init__(self, name, owner, lives=9):
        Pet.__init__(name, owner) # WA
        Pet.__init__(self, name, owner) # Solution
        self.lives = lives
	def talk(self):
        print(self.name + ' says meow!')
	def lose_life(self):
        if self.lives == 0:
            self.is_alive = False
            return
        self.lives -= 1
```

3.2

```python
class NoisyCat(Cat):
    def talk(self):
        Cat.talk(self)
        Cat.talk(self)
```

3.3 WWPD

```python
>>> x, y = A(), B()
>>> x.f()
2
>>> B.f()
Error
>>> x.g(x, 1)
4
>>> y.g(x, 2)
10 #WA
8 #Solution
```

3.4

```python
class Foo:
    def __init__(self, bar):
        self.bar = bar
	def g(self, y):
        return y + self.bar
```









