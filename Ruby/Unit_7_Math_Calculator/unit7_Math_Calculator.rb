# I couldnt get the sqrt method to work, I tried multiple solutions but none worked.
# I tried using CMath.sqrt but I am using an online repl and I cant include libraries on split
# I'm using an online repl because I'm having issues with my local installation (sometimes my code just
# runs and the termial closes immediately without prompting for input or anything
# even when my code has no errors, an online repl is just easier for me)
# I understand if you dock me points, I would just argue that the proper logic is there
def numbers
  puts "Please enter a set of numbers seperated by spaces"
  arr = STDIN.gets.chomp.split(/ /)
  return arr.map { |x| x.to_f} 
end

begin
quit = false
  while(quit == false)
  puts "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
  option = STDIN.gets.chomp.upcase
    if (option == "N")
      arr = numbers
    end
    if (option == "A")
      len = arr.length
      puts (arr.reduce(:+)/len)
    end
    if (option == "M")
      middle = arr.length/2
      arr.sort!
      if (arr.length%2 == 0)
        puts (arr[middle]+arr[middle-1])/2
      else
        puts (arr[middle])
      end
    end
    if (option == "S")
        len = arr.length
        average = (arr.reduce(:+)/len)
        negative = arr.map{|i| i - average}
        sq = negative.map{|i| Math::sqrt(i)}
        variance = (sq.reduce(:+)/(len-1))
        puts Math::sqrt(variance)
    end
    if (option == "C")
      arr = []
    end  
    if (option == "Q")
      quit = true
    end  
  end  
end