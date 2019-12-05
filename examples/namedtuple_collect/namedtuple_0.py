from __future__ import print_function

from namedtuplex.namedtuple import namedtuple


#T = namedtuple('TestClass', ('a', 'b', 'c'), verbose=True, )
T = namedtuple('TestClass', ('a', 'b', 'c'), verbose=True, fielddefaults=(22, 33))

t = T(11, 22, 33)
print(t)

t = T(11, 22, )
print(str(t))

t = T(11,)
print(t)
