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
    attr_accessor :engine
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
      engine = DieselEngine.new
    end
    / Bu iki method yerine şu satırı yazabilirdik:  def_delegators :@engine, :start, :stop; aynı işlem yapar /
    def start
      self.engine.start
    end

    def stop
      @engine.stop
    end

end
  
car = Car.new
car.sunday_drive
car.switch_to_diesel
car.sunday_drive
