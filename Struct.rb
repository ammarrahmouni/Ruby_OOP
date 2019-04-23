/
    Structs

    In some cases, there is no need for defining a fully structured class. 
    Sometimes we need just a group of attributes bundled together (for example, 
    defining points in a 2D space using x and y coordinates).
    We could, of course, create a separate class with all the instance variables and methods,
    but Ruby provides a shortcut to bundle a number of attributes together called a Struct.
/

Point = Struct.new(:x, :y)

/
    In the code above, Point is a Struct, having two attribute accessors: x and y. Struct automatically 
    creates its initialize method for the defined accessors, 
    so now we can use Points just like a class, instantiating different objects from it.
/

origin = Point.new(0, 0)
dest = Point.new(15, 42)

puts dest.y 
puts origin.x

/
    Struct is a built-in Ruby class and makes it shorter to define simple classes, 
    accessors, and their initialize methods.
/