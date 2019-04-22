/
Remember, when used inside of instance methods, self is representing the current instance (object) of that class.
When defining class methods, self is referring to the class itself, and not to an instance of the class.
/
/
@ symbolu self kelimesi yerine gelebilir eğer bir nesne değişkeni tanımlaıyacaksak
/
class Test
    def initialize x
      self.calc x #Dikkat burda self yerine @ yazarsak hatalı çünkü biz burda bir metod çağıryoruz ve self yerine nesne'nin adı gelecek
      hesapla x  #hiç bir şey yazmamak da doğru çünkü burda biz sadece bir metot çağıryoruz
    end
    def calc y
      puts y*4
    end
    def hesapla r
      puts r * 2
    end
  end
t = Test.new 2
