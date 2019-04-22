/
Access Modifiers

Until now, all the methods that we defined in our classes were publicly available,
meaning that you could call those methods from outside of the class.
There are certain situations when methods should only be visible to the class. For example, 
imagine a Banking class with methods to calculate values for internal transactions 
and operations. If these methods were available outside the class, the reliability of the data could be at risk.
To control visibility, Ruby provides the public, private, and protected access modifiers.
By default, all class methods (except initialize) are public, 
meaning that they are accessible from both inside and outside of the class. 
To make a method accessible only from inside the class, we can use the private access modifier:
/

class Person
    attr_accessor :age
    def initialize(age)
      @age = age
    end
    def show
       "#{@age} years = #{days_lived} days, #{@age} years = #{mounth_lived} mounth"
    end
  
    private
    def days_lived
     "#{@age * 365}"
    end
    public
    def mounth_lived
        "#{self.age * 12}" #Dikkat burda eğer age değşikeni attr_accessor ile tanımlamasak 
                           #o zaman self anahtarı koyamayız ile @ symbolu koymak zorundayız
    end
end
  
p = Person.new(42)
puts p.show
puts p.mounth_lived
#puts p.days_lived #Erorr

/
In the code above, the method days_lived is private and is only accessible inside the class. 
We called it from the show method, which is public.
If we try to call the days_lived method from an object (puts p.days_lived), we will get an error.
When the reserved word private is used in a program, anything below it in the class is private 
(unless public or protected is placed after it to negate it).
Access modifiers can be applied only to methods. Instance variable are always private.
/

/
Burda demek ki Eğer bir private method bir class içinde çağıracaksak ve o metdoun önce 
self anahtarı yazarsak hata verecek çünkü self genellikle object adı yerine gelir oysa ki 
burda metod private olduğu için kesinlikle object adı ile çağıramayız.
Hata Burda other.id hatalıdır çünkü other yerine bir object geleceği için hata verir.
/
class Private
    attr_accessor :name, :num
    def initialize(name, num)
      @name = name
      @num = num
    end
    def ==(other)
      self.id == other.id
    end
    private
    def id
      name.length*num
    end
end

p1 = Private.new("PC", 5)
p2 = Private.new("Laptop", 3)
# puts (p1 == p2)
# outputs "...Error: private method 'id' called..."

/
Yukardaki program çalıştırmak için iki seçenğimiz var ya bu id method public yaparsak ama 
böyle yaparsa bile biz o method o class'in dışında kullnmak istemyorsak o zaman private ve public 
yerine proteted kullanabiliriz. 
/

class Product
    attr_accessor :name, :num
    def initialize(name, num)
      @name = name
      @num = num
    end
    def ==(other)
      self.id == other.id
    end
    protected
    def id
      name.length * num
    end
end

p1 = Product.new("PC", 5)
p2 = Product.new("Laptop", 3)
puts (p1 == p2) 
#puts p1.id #Erorr
/
So, protected methods are not accessible from outside code, 
just like private methods, but can be called for an object of the same class or subclasses.
/

