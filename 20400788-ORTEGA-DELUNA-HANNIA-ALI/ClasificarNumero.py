clasificarNumero :: Int -> String
clasificarNumero n 
 | n < 0     = "Negativo"
 | n == 0    = "Cero"
 | otherwise = "Positivo"

main :: IO ()
main = do

  putStrLn "Ingresa un número para clasificarlo:"
  input <- getLine
  let numero = read input :: Int
  putStrLn $ "El número es: " ++ clasificarNumero numero


 --putStrLn "Clasificación de -5:"
 --putStrLn (clasificarNumero (-5))

 --putStrLn "Clasificación de 0:"
 --putStrLn (clasificarNumero (0))

 --putStrLn "Clasificación de 10:"
 --putStrLn (clasificarNumero (10))