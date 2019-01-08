# Write a function called diagonal that accepts one argument, a 2D matrix, and returns the diagonal of
# the matrix.

def diagonal(m):
    # this function takes a matrix m ad returns an array containing the diagonal values
    final = []
    start = 0
    for row in m:
      final.append(row[start])
      start += 1
    return final

# Problem 2
# Write a function called symmetric that will accept one argument, a matrix m, and returns true if the
# matrix is symmetric or false otherwise.

def symmetric(m):
  # this function takes a matrix m and returns true if the matrix is symetric or false if it is not 
  solution = True
  
  for row in range(0, len(m)):
    for item in range(0, len(m[row])):
      if row == item: 
        continue # nothing to check against
      elif m[row][item] == m[item][row]:  
        continue # yes it is symmetric
      else: 
        solution = False
        break
  return solution

# Problem 3
# Write a function called transpose that will return a new matrix with the transpose matrix. The original
# matrix must not be modified. See the usage for examples of how transpose works.

def transpose(A):
  # this function takes a matrix A and returns a new transposed matrix
  At = []
  
  for row in range(0, len(A)):
    if row == 0: 
      for item in range(0,len(A[row])):
        At.append([A[row][item]])
    else:
      for item in range(0,len(A[row])):
        At[item].append(A[row][item])

  return At 
