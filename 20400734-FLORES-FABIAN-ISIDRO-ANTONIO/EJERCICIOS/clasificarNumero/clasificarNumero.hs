clasi :: Int -> String 
clasi n 
 |n < 0 = "Negativo"
 |n == 0 = "Cero" 
 | otherwise = "Positivo"

main :: IO ()
main = do 

 putStrLn "Clasificacion de -5: "
 putStrLn (clasi (-5))

 putStrLn "Clasificacion de 0:"
 putStrLn (clasi 0)

 putStrLn "Clasificacion de 10:"
 putStrLn (clasi 10)
