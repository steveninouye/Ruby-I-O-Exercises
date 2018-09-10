# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.

def read_write_file
    begin
        puts "Enter file name to shuffle: "
        file_name = gets.chomp
        f_read = File.open(file_name, "r")
        lines = f_read.map{|line| line}
        f_read.close
        lines.shuffle!
        f_write = File.open("#{file_name}-shuffled.txt", "w")
        lines.each { |line| f_write.puts line }
        f_write.close
        puts "#{file_name} has been shuffled :-)"
    rescue => e
        puts e
        read_write_file
    end
end

read_write_file