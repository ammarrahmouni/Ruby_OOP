/
    As you may recall, Ruby does not allow a class to inherit from multiple classes. 
    However, a class can mix (مزيج) in multiple modules. Modules used this way are known as "mixins".
    So, basically, a class can have multiple mixins:
/

/
    It is important to remember the following:
    1. You can only inherit from one class. But you can mix in as many modules as you'd like.

    2. If it's an "is-a" relationship, choose class inheritance. If it's a "has-a" relationship, 
    choose modules. Example: a plane "is a" vehicle; a plane "has an" ability to fly.

    3. You cannot instantiate modules (i.e., an object cannot be created from a module). 
    Modules are used only for grouping common methods together. 
    Classes are about objects; modules are about methods.
/
module Walkable
    def walk
        puts "Human is walk."
    end
end
module Speakable
    def speak
        puts "Human is speek"
    end
end
module Runnable
    def run
        puts "Human is Run"
    end
end

class Human
    include Walkable #Mixin
    include Speakable #Mixin
    include Runnable #Mixin
end
h = Human.new
h.walk
h.speak
h.run
