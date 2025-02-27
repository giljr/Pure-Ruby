# loop {} # infinite loop
loop do
    # puts "This will keep running until you hit Ctrl + C"
    print "End Game? (y/n): "
    answer = gets.chomp.downcase
    if answer == "y"
        break
    end
    puts "We are still running"
end