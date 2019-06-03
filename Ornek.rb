class Ornek
    attr_accessor :x

    def initialize 
        @x = 10
    end
    @x = 8
    def self.asd
        @x += 1
    end
    def self.x
        @x
    end

    
end
t = Ornek.new
puts t.x
Ornek.asd
puts Ornek.x
