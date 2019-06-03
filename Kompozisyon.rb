#!/usr/bin/ruby
# encoding: utf-8
/
  Kompozisyon : özetle biz bir class oluşturyoruz ardığından başka bir class oluşturyoruz 
  ama o class'lar birbirlerine bağımsız ardığından o class'indan birisi bir instance variable 
  oluşturyoruz ama bu veriable aynı andan diğer class'indan bir object'tir.şimdi artık
  o değişken o class'indan bir kopyalısıdır ve ordaki tüm özellikler sahip oldu aynı
  anda o object bulunduğu class'in içinde o özellikleri kullanabilir.
/
class Engine
    # Motor'la ilgili tüm ortak akıl burada...
    def start
      puts "başla"
    end
    def stop
      puts "dur"
    end
end
  
class Car
    attr_accessor :engine
    def initialize
      self.engine = Engine.new
    end
  
    # Hafta sonu turu
    def sunday_drive
      self.engine.start
      # Gez dolaş ve dön...
      self.engine.stop
    end
end

car = Car.new
car.sunday_drive

/
    "Kompozisyon" bir has-a ilişkisi kurar

    Car is a Vehicle, that has an Engine
    "Araba motora sahip bir Araçtır"
    Bakın bu farklı bir model
/

