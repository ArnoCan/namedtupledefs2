from __future__ import print_function

import future.utils

from namedtupledefs import namedtuple


#T = namedtuple('TestClass', ('a', 'b', 'c'), verbose=True, )
A = namedtuple('TestClass', ('a', 'b', 'c'), verbose=True, fielddefaults=(22, 33))
B = namedtuple('TestClass1', ('d', ), verbose=True, fielddefaults=(44,))
C = namedtuple('TestClass2', ('e', 'f',), verbose=True, fielddefaults=(55, 66,))
 
t0 = A(11, 22, 33)
print(t0)

t1 = A(11, 22, )
print(str(t1))

t2 = A(33,)
print(t2)

t3 = B()
print(t3)

t4 = C(55,66,)
print(t4)

tx = t1.merge('TestClassSum', t3, t4)
print(tx)
pass
