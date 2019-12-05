Howto
=====

.. toctree::
   :maxdepth: 2

   howto

collections.namedtuple
----------------------
Returns a new subclass of tuple with named fields see docstring from original [namedtuple]_. 

   ::
   
      >>> Point = namedtuple('Point', ['x', 'y'])
      >>> Point.__doc__                   # docstring for the new class
      'Point(x, y)'
      >>> p = Point(11, y=22)             # instantiate with positional args or keywords
      >>> p[0] + p[1]                     # indexable like a plain tuple
      33
      >>> x, y = p                        # unpack like a regular tuple
      >>> x, y
      (11, 22)
      >>> p.x + p.y                       # fields also accessible by name
      33
      >>> d = p._asdict()                 # convert to a dictionary
      >>> d['x']
      11
      >>> Point(**d)                      # convert from a dictionary
      Point(x=11, y=22)
      >>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
      Point(x=100, y=22)


namedtupledefs.namedtuple
-------------------------
Provides drop-in-replacement without the use of the optional default values.
See docstring.

::

   >>> Point = namedtuple('Point', ['x', 'y', 'z'])
   >>> Point.__doc__                   # docstring for the new class with defaults
   'Point(x, y, z)\n    with optional default values fielddefaults=()'
   >>> Point(11, 22, 33)               # instantiate with partial positional args or keywords
   Point(x=11, y=22, z=33)


Defaults for Fields
-------------------
 
Provides optional default values with similar behaviour as function parameters.
See docstring.

   ::
   
      >>> Point = namedtuple('Point', ['x', 'y', 'z'], fielddefaults=(22, 33))
      >>> Point.__doc__                   # docstring for the new class with defaults
      'Point(x, y, z)\n    with optional default values fielddefaults=(22, 33)'
      >>> Point(11)                       # instantiate with partial positional args or keywords
      Point(x=11, y=22, z=33)
      >>> Point(11, y=22)                 # instantiate with partial positional args or keywords
      Point(x=11, y=22, z=33)
      >>> p = Point(11, y=22)             # instantiate with positional args or keywords
      >>> p[0] + p[1] + p[2]              # indexable like a plain tuple
      66
      >>> x, y, z = p                     # unpack like a regular tuple
      >>> x, y, z
      (11, 22, 33)
      >>> p.x + p.y + p.z                 # fields also accessible by name
      66
      >>> d = p._asdict()                 # convert to a dictionary
      >>> d['z']
      33
      >>> Point(**d)                      # convert from a dictionary
      Point(x=11, y=22, z=33)
      >>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
      Point(x=100, y=22, z=33)
      >>> p._replace(z=100)               # _replace() works for fields with default values as well
      Point(x=11, y=22, z=100)

