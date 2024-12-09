factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
main :: IO ()
main = do
    putStrLn "Introduce un número para calcular su factorial:"
    print (factorial 5)
   
   -- input <- getLine
   -- let number = read input :: Integer
   -- putStrLn $ "El factorial de " ++ show number ++ " es " ++ show (factorial number)