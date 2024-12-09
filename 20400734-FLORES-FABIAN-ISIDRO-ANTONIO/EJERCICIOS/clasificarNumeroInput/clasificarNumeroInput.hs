import Text.Read (readMaybe)

clasi :: Int -> String 
clasi n 
 |n < 0 = "Negativo"
 |n == 0 = "Cero" 
 | otherwise = "Positivo"

main :: IO ()
main = do 

 putStrLn "Clasificacion de -5: "
 input1 <- getLine
 let clas = read input1 :: Int
 case readMaybe input1 :: Maybe Int of
    Just clas -> putStrLn (clasi clas)
    Nothing   -> putStrLn "No se ler letras, solo numross"
