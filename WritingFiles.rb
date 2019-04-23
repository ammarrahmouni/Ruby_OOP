/
    Writing Files

    The puts and write methods can be used for writing content to a file.
    The difference between the two is that puts adds a line break to the end of strings, while write does not.
    For example:
/
file = File.new("test.txt", "w+")
file.puts("firrst commit")
file.write("Hello World!")
file.write(" in the program\n")
file.close
# Remember to close the file after performing the file operations.

/
    If we want to write to an existing file, we can use a block of code to perform the write operation.
    With this code Ruby will automatically close the file.
    For example:
/
File.open("test2.txt", "w+"){
    |file| file.puts("First commits ")
}
# This shorter way makes sure the file closes at the end of the block.