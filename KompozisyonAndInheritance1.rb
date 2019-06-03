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
  
class GasolineEngine < Engine
    # Benzinli Motor
end
  
class DieselEngine < Engine
    # Dizel Motor
end
  
class Car
    def initialize
      @engine = GasolineEngine.new
    end

    def sunday_drive
      puts "Motor tipi: #{@engine.class}"
      start
      # Cruise out into the country and return...
      stop
    end

    def switch_to_diesel
      @engine = DieselEngine.new
    end

    def start
      @engine.start
    end 

    def stop
      @engine.stop
    end
end

def main
    car = Car.new
    car.sunday_drive
    car.switch_to_diesel
    car.sunday_drive
end
main

/
    Bu gerçeklemede bir sorun var

    Kod DRY değil
    start ve stop metodları bu eylemleri motor nesnesine gönderiyor
    Her delegasyonda böyle sarmalayıcı metodlar yazmak zorunda mıyız?
    "Şu isimdeki metodları şu nesneye gönder" gibi bir kolaylık?
/