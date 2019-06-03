class Repeat

    def initialize( string, times )
        @string = string
        @times = times
        @@total = 0
    end

    def repeat
        @@total += @times
        @string * @times
    end

    def total
        "Total times, so far: " + @@total.to_s #Type casting from int to String @@total.to_s
    end

end
def main
    data = Repeat.new( "ack ", 8 )
    ditto = Repeat.new( "Again! ", 5 )
    ditty = Repeat.new( "Rinse. Lather. Repeat. ", 2 )
    puts data.repeat
    puts data.total
    puts "-------------"
    puts ditto.repeat
    puts ditto.total
    puts "-------------"
    puts ditty.repeat
    puts ditty.total
end
main
