def numbers_control

  counter = true

  while counter
    puts 'write your number'
    symbol_input = STDIN.gets.chomp

    if symbol_input =~ /\A-?\d+\z/
      return symbol_input.to_i
    else
        puts "#{symbol_input} - is not an Integer" 
    end
  end
end 

main_counter = true

while main_counter

  puts "\nenter smthn or 'exit' for exit:"
  menu_check = gets.chomp

  case menu_check
  when 'exit'
    main_counter = false
  else 

    num1 = numbers_control

    puts 'enter operation (+ - * /):'
    operation = gets.chomp

    num2 = numbers_control

    puts 'RESULT:'

    case operation
    when '+'
      puts num1 + num2
    when '-'
      puts num1 - num2
    when '*'
      puts num1 * num2
    when '/'
      begin
        puts num1 / num2
      rescue ZeroDivisionError => error
        puts error.message
      end
    else
      puts 'Wrong operator'
    end
  end

end

