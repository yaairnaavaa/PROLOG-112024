-- longitud de lista
longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs     

main :: IO ()
main = do
    putStrLn "Introduce una lista: "
    input <- getLine
    
    let numbers = map read (words input) :: [Int]
    let len = longitud numbers
    
    putStrLn $ "La longitud de la lista es: " ++ show len
