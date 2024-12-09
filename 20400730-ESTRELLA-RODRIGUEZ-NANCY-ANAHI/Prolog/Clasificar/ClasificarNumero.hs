import Text.Read (readMaybe)

clasi :: Int -> String 
clasi n 
 |n < 0 = "Negativo"
 |n == 0 = "Cero" 
 | otherwise = "Positivo"

main :: IO ()
main = do 

 putStrLn "Dame un numero"
 numero <- getLine
 let num = read numero :: Int
 case readMaybe numero :: Maybe Int of
        Just num -> putStrLn (clasi num) 
        Nothing  -> putStrLn "Por favor, introduce un número válido" 

 