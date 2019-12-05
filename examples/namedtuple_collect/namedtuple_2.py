from __future__ import print_function

from namedtuplex.namedtuple import namedtuple


T = namedtuple('TestClass', ('a', 'b', 'c'), verbose=True, fielddefaults=(('c', 33), ('b', 22)))

t = T(11, 22, 33)
print(t)
