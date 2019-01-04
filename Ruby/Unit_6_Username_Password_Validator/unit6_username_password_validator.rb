# I tried to use one regular expression but after 2 hours I decided to break it up

def validate_username(username)
  if (username.length < 8) then
    raise 'sorry password too short'
  end

  if(username.match(/[_+-.,!@#$%^&*();\/|<>"']/))then 
    raise 'sorry no special characters'
  end
  
  if(username.match(/[\d]+/)==nil)then
    raise 'sorry need a number'
  end
  
  if(username.match(/[a-z]+/)==nil)then
    raise 'sorry need a lowercase letter'
  end
  
  if(username.match(/[A-Z]+/)==nil)then
    raise 'sorry need an uppercase letter'
  end  
  rescue
    puts'sorry please follow username/password rules'  
end

def validate_password(password,username)
  user = '('+username+')'
  puts user
  if (password.length < 8) then
    raise 'sorry password too short'
  end
  
  if(password.match(user))then
    raise 'password cannot contain username'
  end

  if(password.match(/[_+-.,!@#$%^&*();\/|<>"']/))then 
    raise 'sorry no special characters'
  end
  
  if(password.match(/[\d]+/)==nil)then
    raise 'sorry need a number'
  end
  
  if(password.match(/[a-z]+/)==nil)then
    raise 'sorry need a lowercase letter'
  end
  
  if(password.match(/[A-Z]+/)==nil)then
    raise 'sorry need an uppercase letter'
  end
  
  rescue 
  
  puts 'sorry please follow username/password rules'
  
end



puts 'Please enter your Username:'
username = STDIN.gets.chomp
validate_username(username)
puts 'Please enter your Password:'
password = STDIN.gets.chomp
validate_password(password,username)
puts 'Looks good!'
