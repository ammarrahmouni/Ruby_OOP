#!/usr/bin/ruby
# encoding: utf-8

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