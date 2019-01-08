# Description of program :
# this program when executed will prompt for a string
# and then go character by character and invert the capitalizations

def printOppositeCase(sentence):
  newStr = ""
  for letter in sentence:
    newStr += getChangedCase(letter)
  print(newStr)

  return newStr

def getChangedCase(cha):
  code = ord(cha)
  # if the number is above a below number then its uppercase
  # and it needs to be made lowercase
  if 65 <= code <= 90:
    newCha = chr(code+32)
  # otherwise the number is high and it needs to be made uppercase
  elif 97 <= code <=122:
    newCha = chr(code-32)
  # and if neither of those its a punctuation or something, leave it alone
  else:
    return cha
  return newCha


while True :
  s = input (" Enter a string to convert case to upper or lower \
  ( press ’q’ to exit ):\n")
  if( s == 'q'):
      break
  printOppositeCase ( s )
  print ("\n")
print (" Goodbye ")

