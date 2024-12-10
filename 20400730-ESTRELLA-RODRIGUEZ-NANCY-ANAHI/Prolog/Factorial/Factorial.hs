fact::Int->Int
fact 0=1
fact n=n*fact(n-1)

main :: IO ()
main = do 

 putStrLn "El factorial del numero es : "
 print(fact 4)

 ------------------------------

 Factorial :: Int -> Int
 Factorial n = product[1..n]

 main :: IO ()
 main = do
  putStrLn "Factorial