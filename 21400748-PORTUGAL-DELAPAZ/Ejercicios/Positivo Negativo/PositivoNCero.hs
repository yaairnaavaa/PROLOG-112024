import Text.Read (readMaybe)

-- Función para determinar si un número es positivo, negativo o cero
determineSign :: Int -> String
determineSign n
  | n > 0     = "El número es positivo."
  | n < 0     = "El número es negativo."
  | otherwise = "El número es cero."

-- Función principal que lee un número del usuario
main :: IO ()
main = do
  putStrLn "Ingrese un número entero:"
  input <- getLine
  case readMaybe input :: Maybe Int of
    Just n  -> putStrLn (determineSign n)
    Nothing -> putStrLn "Error: Por favor ingrese un número entero válido."
