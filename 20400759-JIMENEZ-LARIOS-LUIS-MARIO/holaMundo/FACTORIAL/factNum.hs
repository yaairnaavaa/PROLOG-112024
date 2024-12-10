fact :: Int -> Integer
fact 0 = 1  
fact n = toInteger n * fact (n-1)  

main :: IO ()
main = do
   putStrLn "Ingresa un número para calcular su factorial: "
   input <- getLine
   let n = read input :: Int
   putStrLn $ "El factorial es: " ++ show (fact n)

