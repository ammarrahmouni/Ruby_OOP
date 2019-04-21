#!/usr/bin/ruby
# encoding: utf-8
#işleç Yüklemesi (عامل التشغيل)
class Point
    attr_reader :x, :y
  
    def initialize(x, y)
      @x, @y = x, y
    end
    /
        Burda metotlar karşılaştırma işaretleri ile tanımladık hiç bir sorun yok
        lakin object ile kullanacaksak arasında nokta koymuyoruz sadec metodun işareti koyuruz
        Bu metorlar kesinlkle parameter alması gerek.Bu metotlar genellikle true ya da false
        döndüryorlar ama başka şeyler de dödürebilir
    /
    def > (other)
        @x > other.x
    end
    
    def < (other)
      @x < other.x
    end
  
    def >= (other)
      @x > other.x or @x == other.x
    end
  
    def <= (other)
      @x < other.x or @x == other.x
    end

    #Bu metot istersek yazmayabiliriz ve çağırdığında hiçbir sorun olmaz tek bir eşit işareti kouyamayız
    def == (other)
      @x == other.x and @y == other.y
    end

    def to_s
      "(#{@x},#{@y})"
    end

end
  
def main
    p, q = Point.new(9, 10), Point.new(9, 7)
    puts "#{p} noktası #{q} noktasının " + (p < q ? 'solunda' : 'sağında')
    puts  "p > q : #{p > q}"
    puts  "p < q : #{p < q}"
    puts  "p >= q : #{p >= q}"
    puts  "p <= q : #{p <= q}"
    puts  "p == q : #{p == q}" 
end
  
main