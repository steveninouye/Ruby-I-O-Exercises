# I/O Exercises

# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
def guessing_game
    file_name = "guessing_game_guesses.txt"
    rand_num = 1 + rand(100)
    f = File.new(file_name, "w+")
    while true
        puts "Guess a number"
        input = gets.chomp.to_i
        f.puts input
        break if input == rand_num 
        puts "\nYou guessed: #{input} - too high\n\n" if input > rand_num
        puts "\nYou guessed: #{input} - too low\n\n" if input < rand_num
    end
    f.close
    puts "CORRECT! #{rand_num} was the correct answer"
    x = File.open(file_name, "r")
    lines = x.map{|line| line}
    puts "This is the list of your guesses:"
    puts "================================="
    puts lines
    puts "\nYou guessed #{lines.length} times"
    x.close
end

# Uncomment below & run file to play the game:

# guessing_game