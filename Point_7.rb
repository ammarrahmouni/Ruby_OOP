#!/usr/bin/ruby
# encoding: utf-8
#inheritance
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
class Point
  attr_reader :x, :y

  ORIGIN = 0, 0

  def initialize(x, y)
    @x, @y = x, y
    self
  end

  def >(other)
    @x > other.x
  end

  def <(other)
    @x < other.x
  end

  def >=(other)
    @x > other.x or @x == other.x
  end

  def <=(other)
    @x < other.x or @x == other.x
  end

  def ==(other)
    @x == other.x and @y == other.y
  end

  def move(x, y)
    @x += x
    @y += y
    #Dikkat!! self burda demeki (to_s) methodunu çağır; yani Biz move methodunu çağırdımıızda 
    #önce o methodun içindeki işlemi yapacak sonra self en son satır yazdığımız dolay move methoda
    #(to_s) metodu dödürecek Eğer self son satır olmasayıdı (to_s) methodu döndürmeyecek.
    self
  end

  def to_s
    "(#{@x},#{@y})"
  end

  # Sınıf metodları

  class << self
    #Bu metot bir object oluşturu
    def origin
      new(*ORIGIN)
    end
    #????
    def distance(here, there = nil)
      there ||= origin
      Math.sqrt((here.x - there.x)**2 + (here.y - there.y)**2) #Math.sqrt(4) #=> 2 Bu metot bri sayının köküsü döner
    end

  end
end
#inheritance class
class Circle < Point
  attr_reader :r

  def initialize(x, y, r)
    super x, y # FIXME DRY değil; neden x, y ayrıca geçiyor?
    @r = r
  end
  #Bu method dairenin çevrimi hasaplayacak
  def perimeter
    / Math::PI; Math bir Module PI bir class'tir PI değeri 3.1415.... 
      sadece PI yazsaydık hata verir çünkü bu class Module Math içinde  /
    2 * Math::PI * @r 
  end
  #Bu metho dairenin karesi hesaplayacak
  def area
    Math::PI * @r**2
  end
  #Bu method object ekrana yazdırığımızda ordaki Text yazdırır.
  def to_s
    # FIXME Neden x, y?  DRY değil
    #Burdda self'i kullanmayabiliriz
    "#{@r}@(#{self.x},#{self.y})"
  end

  # FIXME Point'te overload edilen bazı işleçler
  # örneğin +, ==, çocuk sınıfta anlamlı değil.
end

def main
  c = Circle.new 3, 5, 2
  c2 = Circle.new 2, 8, 6
  puts "-------------------- #{c} çemberinin Bilgileri --------------------"
  puts "#{c} çemberinin alanı: #{c.area}"
  puts "#{c} çemberinin çevrimim: #{c.perimeter}"
  puts "#{c} çemberi #{c.move(7, 9)} çemberine dönüştü"

  puts "-------------------- #{c2} çemberinin Bilgileri --------------------"
  puts "#{c2} çemberinin alanı: #{c2.area}"
  puts "#{c2} çemberinin çevrimim: #{c2.perimeter}"
  puts "#{c2} çemberi #{c2.move(3, 2)} çemberine dönüştü"

end

main if __FILE__ == $PROGRAM_NAME
