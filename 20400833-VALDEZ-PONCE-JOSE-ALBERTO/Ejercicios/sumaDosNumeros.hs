sumaDosnumeros :: [Int] -> Int
sumaDosnumeros [] = 0
sumaDosnumeros (x:xs) = x + sumaDosnumeros xs


main :: IO ()
main = do
  putStrLn "Introduce n1"
  n1 <- getLine
  putStrLn "Introduce n2"
  n2 <- getLine
  print (sumaDosnumeros [read n1,read n2])