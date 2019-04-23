/
OStruct

    OpenStruct (or OStruct) acts very similarly to Struct, except that it doesn't have a defined list of attributes.
    To use OStruct, we need to include the corresponding library using the require statement.
/

require "ostruct"

person = OpenStruct.new
person.name = "John"
person.age = 42
person.salary = 250
person.work = "Doktor"

puts person.name  
puts person.age
puts person.salary
puts person.work

/
    As you can see, we can define any number of attributes on the fly.
    OStruct isn't as fast as Struct, but it is more flexible.
/

/
    We can also initialize an OStruct using a hash.
    For example:
/
person1 = OpenStruct.new(name:"John", age:42, salary:250)

puts person1.name 
puts person1.age
puts person1.salary

/
    Struct and OStruct provide a simple way to create data structures that have the behavior of a class.
/