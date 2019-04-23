/
    Deleting Files

    We can delete a file using the File.delete method.
    For example:
/
# Not : if the file is not here program is give us an erorr, so the first we hava a creat the file then we can delete the file
File.delete("test3.txt")
# Be careful, as this command deletes the file permanently.

/
    Working with Files

    When working with files, it is important to first check if the file exists in order to prevent an error.
    The file? method provides an easy way of checking if the file exists.
    For example:
/
if File.file?("test3.txt")
   f = File.open("test3.txt") 
   puts f.read
   f.close
else
    puts "File dose not exist"
end
if File.file?("test2.txt")
    f = File.open("test2.txt") 
    puts f.read
    f.close
 else
     puts "File dose not exist"
 end
/
    The code above tests whether a file exists before opening it.
    File.file? returns true if the file exists, and false if it does not.
/

  
