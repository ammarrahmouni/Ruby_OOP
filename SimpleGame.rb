class Player
    attr_accessor :name, :health, :power

    def initialize(n, h, pow)
      @name = n
      @health = h
      @power = pow
    end

    def isAlive
      @health > 0
    end

    def hit(opponent)
      opponent.health -= self.power
    end

    def to_s
      "name: #{name}, Health: #{health}, Power: #{power}"
    end
end

/
    The Player class has 3 instance variables, name, health and power, and 3 instance methods:
    isAlive shows whether the player is still alive.
    hit hits the opponent (decreases the opponent's health by the amount of player's power)
    to_s outputs the player information.
    We have also defined getter and setter accessors for the instance variables using the attr_accessor method.
/
 
def fight(p1, p2)
    while p1.isAlive && p2.isAlive
      p1.hit(p2)
      p2.hit(p1)
      show_info(p1, p2)
    end
      
    if p1.isAlive 
      puts "#{p1.name} WON!" 
    elsif p2.isAlive
      puts "#{p2.name} WON!" 
    else
      puts "TIE!"
    end
end
  
def show_info(*p)
    p.each { |x| puts x}
end

p1 = Player.new("Player 1", 1 + rand(100), 1 + rand(20))
p2 = Player.new("Player 2", 1 + rand(100), 1 + rand(20))

show_info(p1, p2)
puts "LETS FIGHT!"
fight(p1, p2)

/
    We used 100 as the maximum value for health, and 20 as a maximum value for power.
    We add 1 to the rand method to avoid the value 0.
    Now, each time you run the program, two Players with random health and power will be created and will fight!
/


