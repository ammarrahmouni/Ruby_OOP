/
    File Info

    Ruby provides some useful methods to get relevant information about a file.
    The size method returns the size of the file.
    The zero? method returns true if the named file exists and has a zero size (is empty).
    For example:
/
if File.file?("test2.txt")
    f = File.open("test2.txt")
    puts f.read
    puts f.size
    f.close
    puts File.zero?("test2.txt")
else
    puts "The file dose not exist"
end
puts "----------------"

# We can also check whether the file is writable, readable or executable:

puts File.readable?("test2.txt") 
puts File.writable?("test2.txt")   
puts File.executable?("test2.txt") 