class Cember
    attr_accessor :yarcapi
    def initialize(r)
        @yarcapi = r
    end
    def to_s
        "#{yarcapi} yarcapi cember"
    end

end
c1 = Cember.new 5
c2 = Cember.new 6




module Bar1
    @a = 13
    def self.foo
      
        @a += 1
    end
    def self.bar(b)
        foo
        @a += 1
    end
end
puts Bar1.bar 3
class Foo
    attr_accessor :a
    def initialize(a)
        @a = a
    end
    def bar
        self.a += 1
    end
end
class Bar < Foo
    def bar
        super
        @a += 4
    end
end
b = Bar.new 19
puts b.bar
class Box
    def initialize(v, b)
        @width , @height = v ,b
    end
    def getArea
        @area = @width / @height
        "Big box area is #{@area}"
    end
end
class Bigbox < Box
    def getArea
    end
end
box = Bigbox.new 20, 10
p box.getArea()
class Foo1
    def initialize(v)
        @val = v
    end
    def setv(v)
        @val = v
    end
    def get
        @val
    end
end
a = Foo1.new 10
b = Foo1.new 20
print a.get, " ", b.get;
b.setv(30)
print a.get, " ", b.get

kelime = "burubyauper"
freakns = {}
kelime.split("").each do |e|
    freakns[e] = 0 unless freakns[e] 
    freakns[e] += 1
end
p freakns[freakns.keys.last] + freakns["r"]

class Foo2
    attr_accessor :a 
    def initialize(a)
        @a = a
    end
    def bar
        self.a += 3
    end
end
class Bar2 < Foo2
    def bar
        super
        @a + 5
    end
end
b = Bar2.new 7
puts b.bar + b.a


class Animal
    attr_accessor :name
    @@toplam = 0
    def initialize(isim)
        @name = isim
        @@toplam += 1
    end 
    def self.count
        @@toplam.to_s + " toplama hayvan sayisi" 
    end
end
class Dog < Animal
    @@t1 = 0
    def initialize(isim)
        super
        @@t1 += 1
    end
    def self.count
        @@t1.to_s + " toplma Dog sayisi"
    end
end
class Cat < Animal
    @@t1 = 0
    def initialize(isim)
        super
        @@t1 += 1
    end
    def self.count 
        @@t1.to_s + " toplma Cat sayis"
    end
end
d1 = Dog.new "rin tin tin"
d2 = Dog.new "lass"
c1 = Cat.new "tekir"
c2 = Cat.new "sarman"
c3 = Cat.new "boze"
puts Animal.count
puts Dog.count
puts Cat.count
class Foo3
    attr_accessor :a 
    def initialize(a)
        @a = a 
    end
    def bar
        a = 13
    end
end
f = Foo3.new 19
puts f.bar

module FooBar
    def baz
        puts  " foobarbz"
    end

    def corge 
        puts "foobar"
    end
end
class Quux
    include FooBar
end
p Quux.new.baz
class An
    def re
        puts "s"
    end
end
e = An.new
p e.re

