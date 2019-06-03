#!/usr/bin/ruby
# encoding: utf-8
#Miras Alma (Hatalı Soyutlama)

class Vehicle
    # Araç'la ilgili tüm ortak akıl burada...
  
    def start_engine
      puts "başla"
    end
    def stop_engine
      puts "dur"
    end
end
  
class Car < Vehicle
    # Hafta sonu turu
    def sunday_drive
      start_engine
      # Gez dolaş ve dön...
      stop_engine
    end
end

car = Car.new
car.sunday_drive

/
    Car is a Vehicle: Araba bir Araçtır
    Yukarıdaki cümle kulağa doğru geliyor; fakat...
    İsimlendirmelere aldanmayın, modele bakın
    "Araç" nasıl modellenmiş? Vehicle sınıfıyla
    Vehicle? "Motoru olan bir nesne" üretir.

    Her aracın (vasıta'nın) bir motoru var mıdır?
    Bisiklet?
    Planör?
    Kayık?
    Hayır o yüzden bu hatali bir soyutlamadır.
/
/
    "Miras Alma" bir is-a ilişkisi kurar

    Car is a Vehicle: Araba bir Araçtır
    Bu ilişkinin doğal olması lazım

    Aksi halde hatalı bir soyutlama yapmış olursunuz
    Hatalı soyutlamanın bedeli?
    Karmaşık ve kırılgan kod
    Yapboz'da yerine oturmayan parçalar
/