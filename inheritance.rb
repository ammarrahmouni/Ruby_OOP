#inheritance (miras alma) Kalıtım
/
    inheritance : Ruby tek miras destlek ediyor o da demeki biz bir class olşturuyoruz
    ardığından o calss'ında yeni bir class türevliyoruz .Ana class adı SuperClass ya da parent class
    türevlene class adı SupClass ya da child class.Yeni bir class türevleme yöntemi :
    class child_class_adı < parent_class_adı
    child class parent class'indaki her attribute ve metotları kopyalır(instance)
    lakin tersi olamaz , yani eğer child class'inde yeni bir attribute ve metotlar tanımlarsak
    parent class asla o metoları erişemez.
    super() kelimesi child class'inda kullanılır.Nerde kullanılır ?
    child class'ta metouda parent class'i ile aynı metod'da
    yani biz bir parent class'inda bir metodu tanımladık ise bu metod adı (x) olsun
    ardığında child class'inda aynı metodu tanımladı (x) metodu burda artık 
    super kullnılır o da ne yapar ? parent class'i (x) metodunu çağırır.
    Dikkat : Eğer super class'indaki metod parametre alıyorsa o zaman super 
    yazdığımızda parametreyi gönderecek ordak parametrenin sayısna göre gönderiyoruz 
    Not : super keilmesi once kesin olarak parent ve child class'larında metot'ların adı 
    aynı olmak şartıyla kullanabiliriz.Eğer parent ve child calss'indaki metot parametrenin sayıları
    aynı is Istersek super anahtarı yazdığımızda parametrleri göndermeyebiliriz lakin parent 
    ve child class'ların metotları parametrenin sayıları aynı olmak şartıyla.
    çünkü ruby otoamatik olarak child class'indaki metoduna gönderdiğimiz değer otomatik olarak
    parent class'indaki metouna gönderir, ama eğer göndermeyi istiyorsak kesinlikle
    ordaki parametrnein sayılara göre göndeririz ne eksik ne de fazla 
/
class Human
    attr_accessor :name, :age, :long, :weight
    
    def initialize(name, age, long, weight)
        @name = name
        @age = age
        @long = long
        @weight = weight
    end

    def to_s
        "#{@name}"
    end

    def human_info
        puts "He name is : #{@name}"
        puts "He age is : #{@age}"
        puts "He long is : #{@long}"
        puts "He weight is : #{@weight}"
    end
end

class Man < Human
    attr_accessor :marital_status

    def initialize(name, age, long, weight, marital_status)
        super(name, age, long, weight)
        @marital_status = marital_status
    end
    #override
    def human_info
        super 
        puts "He marital stauts is : #{@marital_status}"
    end
    #override
    def to_s
        super + " He is man"
    end
end

class Woman < Human
    attr_accessor :color_eyes

    def initialize(name, age, long, weight, color_eyes)
        super(name, age, long, weight)
        @color_eyes = color_eyes
    end

    def human_info
        super
        puts "She color eyes is : #{@color_eyes}"
    end
    
    def to_s
        super + " She is Woman"
    end

end

def main
    h1 = Man.new("Ammar", 22, 1.75, 85, "Single")  
    puts h1
    h1.human_info
    puts "---------------------"
    h2 = Woman.new("Asmaa", 20, 1.65, 60, "Green")
    puts h2
    h2.human_info
    puts "---------------------"

end

main()