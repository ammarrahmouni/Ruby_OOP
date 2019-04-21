#class variables
/
   Class Veriables : Ruby'de beşka diller gibi class için özel değişkenler ve metotlar oluşturabiliriz
   Bu değişkenler ve metotlar artık class'a ait.metot çağırırken class adı ile çağırılır
   Bu durumu java dilinde static kelimesi ile benzer durum. 
   Class değişkeni : @@değişken_adı ile tanımlarız 
   Class metot : Class_adı.metot_adı ile tanımlarız Ya da self.metot_adı
   class metotu tanımlamak için bir yöntem daha vardır : 
      class << self (ya da class adı koyarız fark etmez)
         def metot_adı
            #Artık bu metot class bir netotur
         end
      end
   burda self java dilinde this gibi.Lakin çağırırken self ile çağırılamayaız class adı ile çağrırız
   Not : bu metotlar kullanmak için objectleri oluşturmayı gerek yok.
   Eğer attirbute class (class değişkeni) attr_accessor onu tanımlarsak ve object 
   ile yazdırmak istersek ekranda hiç bir şey çıkmayacak, lakin eğer onu attr_accessor
   tanımlamasak ve object ile yazdırmak istiyorsak program hata verir.
   Ama metot class object ile yazdırmak istersek hata verecek 
   Not : attirbute class ; class adı ile çağırılamayız (java'daki gibi değil yani)
   çağrırsak hata verir.
   Beki o zamna o attirbute değerini nasıl alırız ? Şöyle
   Bir metot_class ya da metot_object tanımlarız ardığından o metotu çağırırız.
   Not : You must initialize a class attribute before you use it.
/
/
   Not : class değişkeni object değişkeniden çok farkı vardır.
   1- mesele class değikeni ona bir değer vermek için ile bir metod içinde olmak zorunda değiliz
   ama object değişkeni kesinlikle bir metod içinde değer vermek zorundayız.
   2- şimdi bildiğimiz gibi object değişkeni eğer ona (attr_accessor) ile tanımlarsak
   class içinde eğer onu kullanmak istiyorsak @ symbolu koymayı bilirdik, lakin class değişkeni
   class'in içinde her hangi bir yerde kullanmak istyorsak @@ symbolu koymak zorundayız
   koymasak hata verir.
/
class Song 
   attr_reader :playrs, :play
   @@playrs = 0  #class attirbute
   
   def initialize(play, playrs)
      @play = play
      @@playrs = playrs 
   end

   def playr
      @@playrs += 1
   end

   def total 
      @@playrs
   end

   #metot class (1.yöntem)
   def Song.total_plays
      puts "Totla: #{@@playrs}"
   end

   #metot class (2.yöntem)
   def self.hello
      puts "Welcome"
   end
end

def main
   Song.hello
   s1 = Song.new(4, 5)
   s2 = Song.new(8, 10)
   #Burda Dikkat : 1.object olşturduğumuza attribute_class 5 değeri gönderdik ardığından
   #2.object oluşturduğumuza 10 değeri gönderrdik ve en son gönderdiğimiz değer o kaydetti
   #Neden ? çünkü o nitelik class'a ait bir niteliktir.
   puts "s1.play : #{s1.play}"
   puts "s2.play : #{s2.play}"
   # puts Song.playrs; !Hata! dikkat 
   # puts s1.playrs; Hiç bir şey çıkmayacak 
   # puts s1.total_plays; !Hata!
   s1.playr
   puts "s1.total : #{s1.total}"
   s2.playr
   s2.playr
   puts "s2.total : #{s2.total}"
   Song.total_plays
   puts s1.playrs
end

main