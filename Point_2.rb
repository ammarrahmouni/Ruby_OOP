#!/usr/bin/ruby
# encoding: utf-8

class Point
    # XXX Her nitelik (attributes) (خاصية / صفة) için okuyucu yazmamız gerekmiyor
    attr_reader :x, :y
    
    def initialize(x, y)
      @x, @y = x, y
    end
  
    # Ruby'de "doğrulayıcı" (predicator) böyle yazılır
    /
        Not : Boolen tipi metotlar yani true ya da false değeri döndüren metotlar
        en son soru işareti koyarsak daha iyi zournda değiliz ama o metodu gürdüğumuzde
        bilmiş olalım ki bu metod true ya false döndürecek.
    /
    def right?(other)
      @x > other.x
    end
  
    def left?(other)
      @x < other.x
    end
  
    def above?(other)
      @y > other.y
    end
  
    def below?(other)
      @y < other.y
    end
  
    # FIXME foo.equal?(bar) yerine foo == bar yazılamaz mı?
  
    def equal?(other)
      @x == other.x and @y == other.y
    end
   
    def move(x, y)
      @x += x
      @y += y
      # XXX Taşımadan sonra nesnenin kendisini dön ki
      # çağıran ayrı bir atama yapma zorunda kalmasın
    end
  
    def to_s
      "(#{@x},#{@y})"
    end
end
  
def main
    p, q = Point.new(3, 5), Point.new(9, 7)
    puts "#{p} noktası #{q} noktasının " + (p.left?(q) ? 'solunda' : 'sağında')
    # puts p == q  #=> false
    # puts p = q   #=> (9, 7)
    # puts p.equal?(q) #=> false  

end
main