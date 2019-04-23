#!/usr/bin/env ruby
#Modules in Ruby
/
    Modules : Ruby'de Modules destlek ediyor Beki Module ne yapar?
    Modules class'a benzer lakin module'den hiç bir şey türevlenemeyiz
    Modules içinde class'lar olabilir ya da metodlar olabilir.
    Class'lar bazen ortak metodlar vardır ve işimiz daha düzenlenmesi için
    modules kuulanıyoruz yani class'taki ortak metolar module içinde koyabiliriz
    ikinici kullanım şekli : Bir module'de metotlar koyabiliriz sonra o metotlar 
    module'inden harıcındaki class'lar çağırabiliriz.
    Module olşturmak : önce module kelimes yazıyoruz sonra module'in_adı ama ilk harf
    büyük olmalıdır çünkü moduller sabitlermiş.sonra istersek class'lar ya da metotlar
    koyabiliriz.Eğer class'lar koyarsak ardğından o class'ları o moudel'in dışında object olşturmak 
    istiyorsak; yöntem şudur:
    object_adı = module_adı::class_adı.new
    Eğer module içinde metotlar koyarsak sonra module'in dışındaki class'ların içinde o metotlar 
    kullanmak istiyorsak; yöntem şudur : 
    include module_adı
    artık ordaki tüm metotlar o class'in içinde oldu.
    Not : Eğer module'de sadece metotlar varsa o zaman ordan hiç bir zaman class yardım ile
    object oluşturamayız 
    Not : Module içinde bir moudle metodu tanımalnabiliriz tıbki class metodu 
    ve o metodu tanımladıktan sonra istediğimiz yerde (tabi ki dosyanın içinde)
    çağırabiliriz.olşturması tıbki class metod gibi  module_adı.method_adı
    çağırmak aynı şekildedir.
/   
module Dice
    # virtual roll of a pair of dice (حجر النرد)
    def roll
        r_1 = rand(6) 
        r_2 = rand(6) #rand(6) rastgale bir değer atıyor lakin 0'dan 6'e kadar  
        r1 = r_1 > 0 ? r_1 : 1 
        r2 = r_2 > 0 ? r_2 : 6
        total = r1 + r2
        printf( "You rolled %d and %d (%d).\n", r1, r2, total )
        total
    end
    #Moudle method
    def Dice.roll
        r_1 = rand(6)
        r_2 = rand(6)  
        r1 = r_1 > 0 ? r_1 : 1 ; r2 = r_2 > 0 ? r_2 : 6
        total = r1 + r2
        printf( "You rolled %d and %d (%d).\n", r1, r2, total )
        total
    end        

end
#Bu class'i module içinde de olabilir
class Game
    include Dice
end

module Device
    def Oratk_method
        "This is Common Method for all The class"
    end
     
    class Computer
        include Device
       # include Dice; o da olur
        def to_s 
            "This is class Computer From Module Device"
        end
    end

    class Tv 
        include Device
        def to_s
            "This is calss Tv From Module Device"
        end
    end

    class Hard
        include Device
        def to_s
            "This is class Hard From Moudle Device"
        end
    end
end

def main
    g = Game.new
    printf("g.roll methodu: ")
    g.roll
    puts "----------------"
    c = Device::Computer.new
    t = Device::Tv.new
    h = Device::Hard.new
    puts "c.object : #{c}"
    puts "t.object : #{t}"
    puts "h.object : #{h}"
    puts "----------------"
    puts "c.Oratk_method : #{c.Oratk_method}"
    puts "t.Oratk_method : #{t.Oratk_method}"
    puts "h.Oratk_method : #{h.Oratk_method}"
    puts "----------------"
    printf("Dice.roll methodu: ") 
    Dice.roll #Module method çağırmak

end
main()