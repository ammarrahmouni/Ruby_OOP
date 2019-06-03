#Sınıf metodlar
#!/usr/bin/ruby

class Point
    attr_reader :x, :y
  
    ORIGIN = 0, 0 #Bu bir dizidir ama sabit bir dizi
  
    @@population = 0
  
    def initialize(x, y)
      @x, @y = x, y
      @@population += 1
    end
  
    def >(other)
      @x > other.x
    end
  
    def <(other)
      @x < other.x
    end
  
    def >=(other)
      @x > other.x || @x == other.x
    end
  
    def <=(other)
      @x < other.x || @x == other.x
    end
  
    def ==(other)
      @x == other.x && @y == other.y
    end
    
    def move(x, y)
      @x += x
      @y += y
      self
    #Dikkat!! self burda demeki (to_s) methodunu çağır; yani Biz move methodunu çağırdımıızda 
    #önce o methodun içindeki işlemi yapacak sonra self en son satır yazdığımız dolay move methoda
    #(to_s) metodu dödürecek Eğer self son satır olmasayıdı (to_s) methodu döndürmeyecek.
    end
  
    def to_s
      "(#{@x},#{@y})"
    end
  
    # Sınıf metodları
  
    # Burada self ne değer alır?  Point
    def self.origin
      # new metodunun alıcısı kim?  self
      # self burada ne değer alır?  Point (yani sınıf)
      new(*ORIGIN)
    end
  
    def self.population
      @@population
    end
  
    # FIXME: Her seferinde self. yazmak gerekiyor mu?
end
  
def main
    _, _, _ = Point.new(3, 5), Point.new(9, 7), Point.new(-2, 5)
    puts "Nokta sayısı: #{Point.population}"
    puts "_ : #{_}"
    x = Point.new(4, 14)
    x = Point.new(8, 7)
    #aynı adı ile birden fazla object oluşturabiliriz lakin en son oluşturduğumuz object onunla işlenecek
    #bir object ya da değişken adı (_) olarak tanımlarsak demek ki biz o object'i ilgilenmiyor  
    puts "x_object.x_attirbute : #{x.x}"
    puts "x_object.y_attirbute : #{x.y}"
    puts Point.origin
    puts x.move(2,5)
    
end
  
main if __FILE__ == $PROGRAM_NAME
  