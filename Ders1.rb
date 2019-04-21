#Class in Ruby (Object Orinted Programing) OOP
/ 
  Şimdi bildiğimiz gibi her class içinde attirputes(properites) ve metot'lar vardır
  ve biz class olşturduğumuz zamnan bir tip oluşturuyoruz(int, String....vs)ardığndan 
  o class'ında sonsuz object'ler oluşturabiliriz.Her object o class'ından properites ve metot'lar
  alacak lakin her object kendi aldıkları ait başka objectrleri ilgilenmiyor.Zaten bu söylediğimiz
  şeyler hepsi java'da aldık.artık o object instance of(copy) o class'ından
/

/ 
  ruby'da bir calss tanımlamak için önce class kelimesi yazıyoruz ardığndan
  class'ın adı kouyuruz lakin dikkat etmemiz lazım class'ın adı ilk harf her zaman
  büyük olmalıdır bu demek ki o class'i sabitmiş değişmez çünkü bildiğimiz gibi 
  değişkenin ilk harfyi büyükse demek ki o değişken sabitmiş.
  Eğer büyük harfeyi yazmasak programa hata verir.
  Example:
  class Student
    
  end
/

/ 
  Class'tan bir object oluştyracaksak yöntem şudur:
  Object_name = Class_name.new
  Example:
  student1 = Student.new
/

/ 
  Class'ta  metot tanımlayacaksak ruby'deki metotlar aynı ile tanımlanabiliriz.
  yötemi hiç bir değişiklik yoktur.
  Example:
  def ortalama

  end
  attirbutes (Değişkenlere) gelelim Yöntem biraz farklı şu şekilde tanımlarız: 
  @varabile_name; (instance variables) diyoruz
  Example:
  @name, @age 
  Bu değişken artık Objcet'lere ait bir değişkendir ama bu değişkeni class
  hariçinden böyle erişemeiz (java'daki gibi değil) attr kelimesi kullanark erişilebiliriz.
  Erişemk için üç tane yöntem vardır ve onlar şudur:
  attr_reader : (Bu demek ki o değişkeni sadece oku yani üzerinde her hangi bir değişklik yapamayız)
  attr_writer : (Bu demek ki o değişkeni sadece üzerinde bir değişklik yap yani o değişkeni okuyamayız) 
  attr_accessor : (Bu demek ki o değişkeni hem oku hem üzerinde değişklik yap)
  Example:
  attr_accessor :name , :age
  Not : Tabi ki biz onları yerine get ve set metotları oluşturabiliriz lakni çok zahmetli olacak
  Özelikle eğer değişken sayısı fazlaysa.
  set metodu adı öyle tanımlarız daha iyi olur: aynı depğişken_adı=()
  get metodu adı öyle tanımlarız daha iyi olur: aynı değişken_adı
  set metodu:
  def name=(isim)
    @name = isim
  end
  get metodu:
  def name
    @name
  end
/

/ 
  Object olşturduktan sonra değişkenler ve metotlar nasıl erişilir?
  Object_adı.değişken_adı  Ya da  Object_adı.metot_adı
  lakin objectleri (attr_reader) ya da (attr_accessor) ile tanımlamımız gerek
/
/
  Not : Değişkenin değeri kesinlikle metodun içinde anack verebiliriz
  ve o metodun genellikle constructor metodu olur (initialize) metodu ancak 
  değişkenlerin değerleri orda verebiliriz.Bildiğimiz gibi constructor metodu
  object oluşturduğumuz anda çalışır.O metodu hiç bir değer döndürmez.
  Not : Eğer attiribute değeri initialize metodudan başka matod içinde verirsek o metodu önce
  çağırmamız gerek yani class'in dışında ve object oluşturktan sonra biz o değişkeni 
  kullnmak istiyorsak once o metodun (içindeki değişkene verdiğimiz değer metod) çağırmamız gerek
  çağırma sebebi o metodu çağırdığında ordaki değişkeni değeri almış olur.
  öyle yapmasak ardığında o attirbute ekrana yazdığımızda hiç bir şey çıkmayacak
  lakin initialize metodnda o değişkeni değeri verirsek zaten biz object oluşturduğumuz anda 
  o metod çalışcak ve o değşkenin değeri alacak.
/
/
  Not: Biz class'ında her hangi bir yerde yani metodun içinda 
  bir değişken tanımlarsak ama object değişkeni yani @değişken_adı
  biz artık bunu object değişkeni (instance variables) olur ve istediğimiz zaman object adı ile çağırabiliriz 
  lakin dikkat etmemiz gereken husu o değişkeni (attr_   ) olarak tanımlamız gerek
  ya da set ve get metodu tanımlamabiliriz.Get metodu değişken adı ile aynı tanımlarsak 
  daha iyi ve set metodu değişken metodu= ile eşit işareti tanımlarsak daha iyi
/
/
  kural : Eğer değişkeni class'da tanımladık yani (attr_accessor :değşken_adı)
  ve bu değişken calss'inda bir kac tane metoda kullnmak istiyorsak @ symbolu
  olmadan kullanabiliriz, lakin eğer o değişkeni ordaki metoda değer vereckesek mutlaka 
  @ symplou kullanmamız gerek.
  Eğer o değişkeni (attr) ile tanımlamasak ve başka mtodu kullanmak istyorsak 
  mutlaka @ symbolu koymamız gerek yoksa program hata verir.
  lakiiin dikkat her zaman bu değişken initialize metoda @ ile tanımlamaız gerek.
  Kural : instance varabile ona bir değer atmak için kesinlikle 
  metotlar içişnde olmalıdr ve aynı anda @ symbolu koyulmalıdır.
  Not : Eğer object değişkeni bir değer verceksek yukardı dedik ki ile @ symbolu koymalıyız
  ama bir yöntem daha var @ symbolu yerine istersek (self).değişken_adı koyabiliriz
  
/
class Student
  
    attr_accessor :isim , :shcool_name, :class_number , :name , :orta , :state
    # @isim = "ahmet" Hiç bir şey olamyacak ve değer kaydetmeyecek onu ekrana yazdırırsak boş satır verecek

    #constructor metodu
    def initialize(shcool_name , class_number)
        @shcool_name = shcool_name
        @class_number = class_number
        @orta = 0
        @state = "None"
    end
    #öğrencinin ortalanması hesaplayacak metod
    def ortalama (vize_not, final_not)
        @orta = ((vize_not * 40) / 100) +  ((final_not * 60) / 100) 
    end
    #öğrencinin durumu Belirtilecek metod
    def student_state()
        if(orta >= 50) #Dikkat orta değşkeni yukarda tanımladığımız için @ symbolu koymadık çünkü burda sadec o değişkeni kullanıyoruz ona her jangi bir değer atmıyoruz Eğer onar değer atsaydık o zaman mutlaka > symbolu koymamız gerek.
            @state = "successful"
        else 
            @state = "Deposit"
        end
    end
    #öğrencinin bilgileri yazdıran metod
    def student_info(name, age, detr)
        @name = name
        @age = age
        @detr = detr
        puts "------------------#{name} Information-------------------"
        puts "Studnet's School : #{shcool_name} "
        puts "Student age : #{age}" #Burda @ symbolu koymadık çünkü age tanımladığı metod içindeyiz
        puts "Student GPA : #{orta}"
        puts "Student Department : #{detr}" #Burda @ symbolu koymadık çünkü detr tanımladığı metod içindeyiz
        puts  "Student Statu : #{state}"
    end
    /
    def test
      x = age + 5; Böyle hata verir çünkü age değişleni kullanmamız için ya @ symbolu koyarız ya da eğer @
    end            symbolu kullanmak istemiyorsak attr_accessor :age ile tanımlarız
    /

    /
      Bu metod object ekrana yazdığımızda object Bellk'te adressin yerine 
      şu metodu yazdırsın.
      Metod isimi çok önemli (to_s) şöyle olmalı.
      Bu metod orkaki değerler dödürecek ve object adı yazdığımız zmana
      o metod yazdıracak ondan dolayı metodun içinde puts kelimeyi koymayı gerek yoltur
      Hata o metod normal metodlar gibi çağırabiliriz yani (object_name.to_s)
      aynı sonuc verecek
    /

    def to_s
      "(#{@name}, #{@shcool_name} , #{@class_number} )" 
    end
end

def main
  student1 = Student.new("Ibn Zedoun", "Third row at the university")
  student1.ortalama(100 , 75)
  student1.student_state
  student1.student_info("Ammar" , 22, "Computer scince")
  puts "Student's Class number : #{student1.class_number}"

  student2 = Student.new("Alkendi" , "Secund row at the university")
  student2.ortalama(50, 40)
  student2.student_state
  student2.student_info("Samer", 20, "Doktor")
  puts "Student's Class number : #{student2.class_number}"

  #student1.isim = "mehmet" # writing
  #puts student1.isim       # reading  #=> mehmet 
  puts "----------------"
  puts "Student1 Object : #{student1}" #puts student1.to_s //dogru
  puts "Student2 Object : #{student2}"     
end
main()
