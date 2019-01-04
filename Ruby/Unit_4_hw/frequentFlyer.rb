# frequent flyer Unit 4 homework Arash Dai
# could have used a helper function to check inputs and stay more DRY
basePoints = 10000
print 'How many miles are you flying? '
distance = STDIN.gets.chomp.to_i
if(distance < 0) then puts 'Sorry not enought points'
else
distance = distance/250*1000    
print 'Would you like to fly First Class? (y/n): '
firstClass = STDIN.gets.chomp.downcase
if (firstClass!='y'&&firstClass!='n') then 
    while(firstClass!='y'&&firstClass!='n') 
        print 'please enter y for yes or n for no: '
        firstClass = STDIN.gets.chomp.downcase
    end
end
firstClass == 'y' ? firstClass = 0.4 : 0
print 'Are you leaving on a Friday, Saturday, or Sunday? (y/n): '
weekend = STDIN.gets.chomp.downcase
if (weekend!='y'&&weekend!='n') then 
    while(weekend!='y'&&weekend!='n') 
        print 'please enter y for yes or n for no: '
        weekend = STDIN.gets.chomp.downcase
    end
end
weekend == 'y' ? weekend = 5000 : 0 
print 'Is your destination Canada, Mexico, or the Carribean? (y/n): '
premiumDestination = STDIN.gets.chomp.downcase
if (premiumDestination!='y'&&premiumDestination!='n') then 
    while(premiumDestination!='y'&&premiumDestination!='n') 
        print 'please enter y for yes or n for no: '
        premiumDestination = STDIN.gets.chomp.downcase
    end
end
premiumDestination =='y' ? premiumDestination = 7500 : 0
total = (basePoints+distance+weekend)
firstClassFee = (total*firstClass)
(firstClass>0)? total+=firstClassFee : nil

print "Summary of Charges \n
Base Ticket Cost: 10000 points \n
Distance Fee: #{distance} \n
Weekend Fee: #{weekend} \n
Premium Destination Fee: #{premiumDestination} \n
First Class Fee: #{firstClassFee.to_s.chop.chop} \n
Total: #{total.to_s.chop.chop}"

end