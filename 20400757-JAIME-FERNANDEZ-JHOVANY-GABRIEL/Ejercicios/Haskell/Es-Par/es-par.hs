esPar :: Integer -> Bool
esPar n = n `mod` 2 == 0

main :: IO ()
main = do
   putStrLn "¿El número 4 es par?"
   print(esPar 4)

   putStrLn "¿El número 7 es par?"
   print(esPar 7)
