/   A class'inda sabit bir değşiken tanımladık o değişken ilk harfı büyük olmalıdır
    ona erişmek için yöntem şudur: (class_adı::değişken_adı)  
/

/
    A class'inda (@@class_variable) bir değşiken tanımladık bildiğimiz üzere bu değişken 
    class'a ait bir değişkendir.ve o değşikeni erişmek için onun aynı adı bir class metodu oluşturuz
    ve o metodu o değişkenin değeri döndürür.ardığından (class_adı.metot_adı) o yöntemi kullanarak 
    orakdi değişkeni erişebiliriz.
/

/
    A class'inda (@instance_variable) bir değişken tanımladık ve o değişken initilaize metodunda
    değeri verdik.ve attr ile tanımladık artık bu değişken nesnelere ait bir değişken yani onu erişmek için
    kesinlikle bir nesne oluşturmalıyız ardığında nesne adı ile kullanarak o değişkeni erişebiliriz. 
/

/
    A class'inda (@class_instance_variable) bir değişken tanımladık ama burda dikkat etmeliyiz
    bu değişken nesnelere ait bir dğişken deiğldir çünkü onun değeri bir instance metodun içinde vermedik
    class'ta verdik.o değişkenin adı sınıf nesne değişkeni
    hata bu değişken class << self içinde attr ile tanımladık bildiğimiz üzere bu kısım 
    class metotlar içind kullanılır.ardığında o değişken erişmek için (class_adı.değişken adı)
    erişilebiliriz.Lakin dikkat edelim o değişken class << self kısmında attr yaparak tanımlanmalıyız.
    ya da bir class metod oluşturuoruz ve o metod o değişkenin değeri döndüryor

/

/
    Result -1-: constant değişkeni eğer çoçuk sınıflar'ında değiştirirsek ana sınıf'ın o değişkeni
    değeri aynı kalır çoçuk sınıfın değişkenin değerine değişir.Ama eğer o değişkenin değeri 
    değiştirmesek çoçuk sınıflar'ında değişken değrinin ebevyen sınıfındaki değirini aynısı alır. 
/

/
    Result -2-: sınıf değişkeni(@@) Eğer sınıf değişkenin değirine çoçuk sınfında değiştirirsek artık 
    ebevyen ve çoçuk sınıflar'da o değişkenin değirine değişir.Birden daha fazla çoçuk sınıflarda
    o değişkenin değirine değiştirirsek en son sınıfında yaptığımız değişklik o kaydeddir.
/

/
    Result -3-: nense değişkeni(@) Eğer nesne değişkeni değirine çoçuk sınfında değiştirirsek artık 
    çoçuk sınıfın'da o değişkenin değirine değişir.lakin dikkat edelim değişme işlemler bir inştitize metodu
    içinde olmalıdır, ya da başka metolar içinde olabilir.Eğer başka metotlar içinde o değişklik işlem yaparsak
    o metotlar çağırmamız lazım.
/

/
    Result -4-: sınıf nensne değişkeni(@) bu değişken çocuk sınıflara miras edemiyor yani biz eğer 
    çocuk sınıflarda bu değişken yazdırısak hata vermez lakni boş satır üretirir. onu boş satır
    üretmemesi için kesinlikle çocuk sınıflarda o değişkenin değer vermesi gerekir.
/
/
    Not : bir class içinde ve class metotların içinde ve instance metodların dışında self kullanırsak
    demek ki self yerine class adı gelir.ama eğer self kelimesi instance metotlarin içinde 
    kullanılmışsa bunu demek ki self yerine o class'tan oluşturduğumuz nesne koyar.
/

# Not : (attr and attr_reader) aynı

# Yardımcı
def dump(p)
    puts "#{p}: #{eval(p, TOPLEVEL_BINDING) || 'boş'}"
end
  
puts 'A sınıfı tanımlanıyor'
class A
    attr :instance_variable

    #self burda demeki class adı
    CONSTANT = "#{self}_CONSTANT"
    @@class_variable = "#{self}_class_variable"
    @class_instance_variable = "#{self}_class_instance_variable"
  
    def initialize
        #burda self demek object adı( #<A:0x22609b0> )
      @instance_variable = "#{self}_instance_variable"
    end
  
    class << self
    #Burda (class_instance_variable) değişkeni class adı ile ulaşmak için attr ile tanımladık ve bu kısmına tanımladık 
      attr :class_instance_variable
      def class_variable
        @@class_variable
      end
    end
end
  
puts 'B < A sınıfı tanımlanıyor (değişiklik yapmadan)'
class B < A
end

puts 'C < A sınıfı tanımlanıyor (değişiklik yaparak)'
class C < A
    CONSTANT = "#{self}_CONSTANT"
    @@class_variable = "#{self}_class_variable"
    @class_instance_variable = "#{self}_class_instance_variable"
end
  
puts 'A sınıfından a nesnesi oluşturuluyor'
a = A.new
puts 'B sınıfından b nesnesi oluşturuluyor'
b = B.new
puts 'C sınıfından c nesnesi oluşturuluyor'
c = C.new

puts
dump 'A'
dump 'A::CONSTANT'
dump 'A.class_variable'
dump 'A.class_instance_variable'
dump 'a.instance_variable'
puts
dump 'B'
dump 'B::CONSTANT'
dump 'B.class_variable'
dump 'B.class_instance_variable'
dump 'b.instance_variable'
puts
dump 'C'
dump 'C::CONSTANT'
dump 'C.class_variable'
dump 'C.class_instance_variable'
dump 'c.instance_variable'

/
class A
    attr :x
    @x = 10
    def initialize
        @x = 15
    end
    class << self
        attr :x
    end
end
a = A.new
puts A.x
puts a.x 
#Not : instance_variable ve class_instance_variable değişkenler birbirine bağomsızdır ve aynı adı ile koyabiliriz.
/