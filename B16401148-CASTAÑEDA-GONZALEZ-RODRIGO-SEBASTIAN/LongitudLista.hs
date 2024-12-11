--
longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs
--
main :: IO ()
main = do
--
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    
--
    let numeros = map read (words input) :: [Int]
    
-- 
    let len = longitud numeros
    
-- 
    putStrLn ("La longitud de la lista es: " ++ show len)
