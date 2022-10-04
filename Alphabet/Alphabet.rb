def alphabet_position
    alphabet_array = ["nill", *('a'..'z')]
    ourArray = []
    ourText = gets.chomp
    index = 0
    while index <= ourText.length
        ourArray = ourText.downcase.split("")
        index = index + 1
    end
    for x in ourArray do
        for y in alphabet_array do
            if x == y               
            print ("#{alphabet_array.find_index(y)} ")
            end
        end
    end
    puts("\n")
end

def get_text
    counter = 0
    while counter == 0 do
        puts("\n1.Write your text\n2.Exit")
        checkList = gets.chomp
        case checkList
        when "1"
            puts "Text:"
            
            alphabet_position
        when "2"
            puts "\ngl"
            abort
        else
            puts "\nPut 1 or 2"
        end
        
    end
end

get_text

