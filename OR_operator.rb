/
  Not önemli : (|) or operatörü tek bir sympol eğer iki sayı karşıaştırıyoruz
  o iki sayının binary çeviriyor sonra o iki sayının or ile karışlaştırma yapıyor sonra çıkan 
  binary sayı decimal çevriyor ve ekrana yazdırıyor
  Eğer ilk değişken nil ise o zaman bize true döndürecek her iki değişken nil ise 
  false değeri döndürecek ,yanlızca ikinci değişken nil ise ve birinci değişkeni bir sayı ise hata verir.
  (||) or operatör iki sympol eğer iki sayı karşılaştırıyoruz ilk sayı ekerana yazdıracak
  eğer ilk sayı nil ise ikinci sayı yazdıracak , Eğer ikinci sayı nil ise 
  birinci sayı yazdıracak , eğer iki sayı nil ise hiç bir şey yazdırmayacak 
/

x = 4
y = 10
c = nil 
r = nil
puts "(x | y) = #{x | y}"
puts "(y | x) = #{y | x}"
puts "(x || y) = #{x || y}"
puts "(y || x) = #{y || x}"
# puts "(x | c) = #{x | c}" !Hata!
puts "(c | x) = #{c | x}"
puts "(c | y) = #{c | y}"
puts "(c | r) = #{c | r}"
puts "(r | c) = #{r | c}"
puts "(x || c) = #{x || c}"
puts "(c || x) = #{c || x}"
