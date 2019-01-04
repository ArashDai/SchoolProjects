#I'm really hoping you didnt want this formatted the way your solution was presented
#I tried to format it but I couldn't figure it out. the printer function is supposed to handle
#that part, any pointers?
def histogramer(str)
  arr = str.split(//)
  storage = {}
  for x in arr
      if(x != " ")
        storage[x]==nil ? storage[x]="*": storage[x]+="*"
      end
  end
  return storage
end

def printer(data)
  final="" 
  for x in data
    final+=" #{data[x]} \n"
  end
  puts final
end

begin
  puts 'Enter a string'
  histogramer(STDIN.gets.chomp)
  #printer(histogramer(STDIN.gets.chomp))
end