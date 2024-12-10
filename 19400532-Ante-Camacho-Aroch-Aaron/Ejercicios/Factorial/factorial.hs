-- Factorial de un numero  
factorial :: Int -> Int
factorial n = product [1 ]
main :: IO () 
main = do
  put Strln "Factorial de 5:"
  print (factorial 5)

