/
    A class can also contain constants. Remember, constant variables do not change their value and 
    start with a capital letter. It is common to have uppercase names for constants, as in:
/

/
    constant class bir metod içinde olmaması gerek 
/

class Calc
    PI = 3.14
    Today = "Sunday"
    /
    def asd
        T = 10; Hata
    end
    /
    # PI = 3.145 warning verir hata vermez ve o değer kaydeder
end

class Arc < Calc
    Today = "Monday"
end
/
    You can access constants using the class name,
    followed by two colon symbols (::) and the constant name, for example:
/
puts Calc::PI
puts Calc::Today 
puts "-----------"
puts Arc::PI
puts Arc::Today