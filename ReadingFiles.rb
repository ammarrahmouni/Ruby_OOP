/
    Reading Files

    To read the entire contents of a file the File.read method can be used.
    For example:
/
f = File.new("test3.txt", "w+")
f.puts("Hello")
f.puts("World!")
f.close
puts File.read("test3.txt")
puts "------------"

# Not : we can read any file in the dicetonry until it is dont creat here!
# for exammple :

puts File.read("test.txt")
puts "------------"
puts File.read("test2.txt")
puts "------------"
# puts File.read("SimpleGame.rb") #correct

/
    Reading Files

    We can also read the file contents line-by-line using the readlines method.
    For example:
/
File.readlines("test.txt").each{
    |line| puts " --- #{line}"
}
/
    The readlines method reads the entire file based on individual lines and returns those lines in an array.
/