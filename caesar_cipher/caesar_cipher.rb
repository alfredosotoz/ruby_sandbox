# Caesar Cipher simple code
def caesar_code(code, shift)
    code.downcase.each_byte do |c|
        if (c+shift > 122)
            rest = ((c+shift)-122)
            print "#{(64+rest).chr}"
    else
        print "#{(c + shift).chr}"
    end
    end
    puts
end
puts "Code: "
code = gets.chomp
puts "Shift: "
shift = gets.chomp.to_i
caesar_code(code, shift)