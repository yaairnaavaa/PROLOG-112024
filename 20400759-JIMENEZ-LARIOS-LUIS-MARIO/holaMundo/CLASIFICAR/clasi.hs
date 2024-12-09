--Con esta libreria sirve para el manejo de entradas no validas de manera segura
import Text.Read (readMaybe)

clasificarNumero :: Int -> String
clasificarNumero numero 
 | numero < 0     = "Negativo"
 | numero == 0    = "Cero"
 | otherwise = "Positivo"

main :: IO ()
main = do

  putStrLn "Ingresa un número para clasificarlo:"
  input <- getLine
  case readMaybe input :: Maybe Int of
    Just numero -> putStrLn $ "El número es: " ++ clasificarNumero numero
    Nothing -> putStrLn "Error: Porfavor, introduce un número valido."
 
 -- let numero = read input :: Int
  --putStrLn $ "El número es: " ++ clasificarNumero numero


 --putStrLn "Clasificación de -5:"
 --putStrLn (clasificarNumero (-5))

 --putStrLn "Clasificación de 0:"
 --putStrLn (clasificarNumero (0))

 --putStrLn "Clasificación de 10:"
 --putStrLn (clasificarNumero (10))
