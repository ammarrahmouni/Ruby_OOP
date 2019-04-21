#!/usr/bin/ruby
# encoding: utf-8
# Point Example
class Point
  
    def initialize(x, y)
      @x, @y = x, y
    end
  
    # FIXME Her nitelik için böyle okuyucu mu yazacağız?
    def x
      @x
    end
    
    def y
      @y
    end
    # Bu iki metodun yerine şu satırı yazabilirdik attr_reader :x, :y

    def isright(other) #Burda other değeri bir object olmalıdır çünkü other.x yazdık
      @x > other.x     # x > other.x yazabilirdik çünkü x ona bir get metodu oluşturduk aslında aynı (attr)
    end
  
    def isleft(other)
      @x < other.x
    end
  
    def isabove(other)
      @y > other.y
    end
  
    def isbelow(other)
      @y < other.y
    end
  
    def isequal(other)
      @x == other.x and @y == other.y
    end
  
    def move(x, y)
      @x += x # x += x yazamayız çünkü burda @x bir değer vereceğiz ve bir instance varaible bir değer verceksek kesinlikle @ symbolu koymak gerek
      @y += y
      # FIXME Bu metod (şu noktada) ne döner?  Zararı?
    end
    /
        (to_s) metodu: Bu metodu biz bir object oluşturduğumuzda  ve eğer
        puts Object_adı yazdırırsak artak ekerana (#<Point:0x22691a0>) o değil
        ordaki metotun içindeki değerler yazdırıyor  ama dikkat etmemiz o fonksiyonu adı (to_s) olmak zorundadır
    /
    def to_s
      "(#{x}, #{y})"
    end
end
  
def main
    p, q = Point.new(3, 5), Point.new(9, 7)
    puts "#{p} noktası #{q} noktasının " + (p.isleft(q) ? 'solunda' : 'sağında') #if şartı tek bir satırda
    puts "#{p} noktası #{q} noktasının " + (p.isabove(q) ? "üstunde" : "altında")
    puts "#{q} noktası #{p} noktasının " + (q.isequal(p) ? "Eşit" : "Eşit deiğl")
    puts "---------------"
    puts "p.move(2 , 3) = #{p.move(2,3)}"   #Burda En son satırı dönürecek yani yazdıracak o da y'nin toplamı
    puts "p noktası yeni değeri #{p}"  #Burda p noktası move metodu çağırdıktan sonra yeni değeri
end
  
main
  