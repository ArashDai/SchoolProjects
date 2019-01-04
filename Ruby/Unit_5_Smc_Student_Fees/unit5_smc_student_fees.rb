def calculator (units,semester,resident,sticker,id,parking)
  #enrollment fee
  if (resident == 'y')then unit_cost = units * 46
    else unit_cost = units * 335 end
  puts unit_cost    
  #student services
  if(sticker == 'y') then student_services = 19.5  
    else student_services = 0 end
      
  if(id == 'y')then student_services += 13 end
    
  if(semester == 'winter'|| semester == 'summer')then
      student_services +=48.5
    else student_services +=51.5 end
      
  if(parking == 'y')then 
    if(semester == 'winter'|| semester == 'summer')then
      student_services += 45
    else student_services += 85 end
  end
  total = unit_cost + student_services.to_f
  return "For the #{semester.capitalize} semester, your total fees are #{total}"
end

begin
    puts 'SMC Fee Calculator'
    puts 'How many units are you enrolled in?'
      units = STDIN.gets.chomp.to_i
    puts 'Which session is this? [Fall, Winter, Spring, Summer]'
      semester = STDIN.gets.chomp.downcase
      if (semester != 'fall'&&
          semester != 'winter'&&
          semester != 'spring'&&
          semester != 'summer')then
            raise 'please enter a valid session'
          end
    puts 'Are you a state resident? [y/n]'
      resident = STDIN.gets.chomp.downcase
      if (resident != 'y'&&
          resident != 'n')then
            raise 'please enter y or n' 
          end
    puts 'Would you like an AS sticker? [y/n]'
      sticker = STDIN.gets.chomp.downcase
      if (sticker != 'y'&&
          sticker != 'n')then
            raise 'please enter y or n'
          end
    puts 'Would you like an ID Card? [y/n]'
      id = STDIN.gets.chomp.downcase
      if (id != 'y'&&
          id != 'n')then 
            raise 'please enter y or n'
          end
    puts 'Would you like a Parking Pass? [y/n]'
      parking = STDIN.gets.chomp.downcase
      if (parking != 'y'&&
          parking != 'n')then 
            raise 'please enter y or n'
          end
  
    calculator(units,semester,resident,sticker,id,parking)
    
    
    rescue 
    
      puts 'sorry please enter correct values'

end
