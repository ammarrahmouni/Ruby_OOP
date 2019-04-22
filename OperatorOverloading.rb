/
Operator Overloading

Ruby allows us to overload operators so that we can perform operations such as adding two objects together.
Let's say we have a class Shape, which has width and height properties. We want to be able to add together two 
Shape objects and, as a result, get a new object that has its width and height equal to the sum of the 
corresponding properties of the objects.
All we need to do is define the corresponding operator as a method:
/

class Shape
    attr_accessor :h, :w
    def initialize(h, w)
        self.h = h
        self.w = w
    end

    def +(other)
        Shape.new(self.h + other.h, self.w + other.w)
    end

end

a = Shape.new(7, 4)
b = Shape.new(9, 18)
c = a + b
puts c.h 
puts c.w 

/
As you can see, the + method takes one argument, which is another Shape object, and returns 
a new Shape object with the corresponding values.
You can override almost all operators in Ruby and have any custom logic defined in the corresponding method.
/