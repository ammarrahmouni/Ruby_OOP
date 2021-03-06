#!/usr/bin/ruby
#sınıf metodlar
#sınıf metodu tanımlamak için yeni yöntem

class Point
    attr_reader :x, :y
  
    ORIGIN = 0, 0
  
    # FIXME: Sınıf niteliği yerine başka bir şey kullanılabilir mi?
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
    end
  
    def to_s
      "(#{@x},#{@y})"
    end
  
    # Sınıf metodları
  
    # Her seferinde self. yazmak yerine sınıfı yarıp metodu
    # içine koyalım.  Böylesi daha DRY
    # Burada self ne değer alır?  Point

    class << self #ya da Point yazabiliriz
      /
        origin metot bir object oluşturyor yani biz şunu yapabiliriz:
        r = Point.origin = (r = Point.new(x,y) ) aslında aynı şey
        artık şimdi biz bir (r) object oluşturduk lakin bu object x ve y 
        değerleri her zaman 0 olacaktır
      /
      def origin
        # new metodunun alıcısı kim?  self
        # self burada ne değer alır?  Point (yani sınıf)
        new(*ORIGIN)
      end
  
      def population
        @@population
      end
    end
end

def main
    _, _, _ = Point.new(3, 5), Point.new(9, 7), Point.new(-2, 5)
    puts "Nokta sayısı origin metodu çağırmadan önce: #{Point.population}"
    puts  "Point.origin : #{Point.origin}"
    puts  "Point.origin : #{Point.origin}"
    r = Point.origin  # dogru bir object oluşturduk
    puts "Nokta sayısı origin metodu çağırdıktan sonra: #{Point.population}"

   
end
  
main if __FILE__ == $PROGRAM_NAME
  