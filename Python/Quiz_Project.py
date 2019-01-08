import random

# Description of program :
# This is a trivia quiz about Santa Monica College
#
questions = [
  {
    'question' : ' What  is 1+1? \n a:1 \n b:2 \n c:3 \n d:4 \n',
    'a' : '1',
    'b' : '2',
    'c' : '3',
    'd' : '4',
    'answer' : 'b'
  },
  {
    'question' : ' What  is 2+1? \n a:1 \n b:2 \n c:3 \n d:4 \n',
    'a' : '1',
    'b' : '2',
    'c' : '3',
    'd' : '4',
    'answer' : 'c'
  },
  {
    'question' : ' What  is 2+2? \n a:1 \n b:2 \n c:3 \n d:4 \n',
    'a' : '1',
    'b' : '2',
    'c' : '3',
    'd' : '4',
    'answer' : 'd'
  },
  {
    'question' : ' What  is 3+1? \n a:1 \n b:2 \n c:3 \n d:4 \n',
    'a' : '1',
    'b' : '2',
    'c' : '3',
    'd' : '4',
    'answer' : 'd'
  },
  {
    'question' : 'What  is 4+1? \n a:1 \n b:5 \n c:3 \n d:4 \n ',
    'a' : '1',
    'b' : '5',
    'c' : '3',
    'd' : '4',
    'answer' : 'b'
  },
  {
    'question' : 'What  is 5-1? \n a:1 \n b:2 \n c:3 \n d:4 \n',
    'a' : '1',
    'b' : '2',
    'c' : '3',
    'd' : '4',
    'answer' : 'd'
  },
  {
    'question' : 'What  is 3*1? \n a:1 \n b:2 \n c:3 \n d:4 \n',
    'a' : '1',
    'b' : '2',
    'c' : '3',
    'd' : '4',
    'answer' : 'c'
  }
]

print (" Welcome to Trivia Quiz .")
print (" Win by answering all three questions correctly ")

numberCorrect = 0
quitLoop = False
tryAgain = None

while quitLoop == False:
  if tryAgain:
    print('were tryin again!')
    response = input(questions[tryAgain]['question'])
    tryAgain = None
  else:   
    num = random.randint(0, 7) -1
    response = input(questions[num]['question'])

  if response == questions[num]['answer']:
    numberCorrect+=1
    print("that is correct!")
  elif response == "n":
    quitLoop = True
    
  else:
    if input("Sorry that is incorrect press a to try again") == 'a':
      tryAgain = num
  
  if numberCorrect == 3:
    if input('press y to play again') == 'y':
      numberCorrect = 0
    else:  
      quitLoop = True