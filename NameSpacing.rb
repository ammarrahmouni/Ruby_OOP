/
    Namespacing

    We've already seen how modules can be used to mix-in common behavior into classes.
    Now we'll see two more uses for modules.
    The first case we'll discuss is using modules for namespacing.
    In this context, namespacing means organizing similar classes in a module. In other words, 
    we'll use modules to group related classes.
    For example:
/
/
    The advantages of namespacing classes:
    It becomes easy for us to recognize related classes in our code. 
    It reduces the likelihood of our classes colliding(اصطدام) with other similarly named classes in our code. 
    We can have the same class names across different modules.
/

module Mammal
    class Dog
      def speak
        puts "Woof!"
      end
    end
  
    class Cat
      def speak
        puts "Meow!"
      end
    end
end
a = Mammal::Dog.new
b = Mammal::Cat.new

a.speak  
b.speak  
/

    We defined a module Mammal which groups together two classes, Dog and Cat.
    Now we can call classes in the module by appending the class name to the module name with two colons(::)
/