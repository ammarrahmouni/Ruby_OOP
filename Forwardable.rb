require 'Forwardable'

# Motor
class Engine
  # Motor'la ilgili tüm ortak akıl burada...
  def start
    puts 'başla'
  end

  def stop
    puts 'dur'
  end

end

class GasolineEngine < Engine
  # Benzinli Motor
end

class DieselEngine < Engine
  # Dizel Motor
end

# Araba
class Car
  extend Forwardable
  def_delegators :@engine, :start, :stop #metodların sayı ne kadar olursa olsun
  #Aslında Yukardaki satır şu işlem gerçekleştirilmiş:
  /
  def start
    @engine.start
  end 

  def stop
    @engine.stop
  end
  /
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

end

car = Car.new
car.sunday_drive
car.switch_to_diesel
car.sunday_drive