factorial :: Integer -> Integer
factorial 0=1
factorial n = n*factorial(n-1)

main :: IO ()
main = do
 putStrLn "El factorial del numero es:"
 print (factorial 5)