import Text.Read (readMaybe)

clasificarNumero :: Int -> String
clasificarNumero n
  | n < 0     = "Negativo"
  | n == 0    = "Cero"
  | otherwise = "Positivo"

main :: IO ()
main = do
  putStrLn "Introduce un número:"
  input <- getLine
  case readMaybe input :: Maybe Int of
    Just num -> putStrLn (clasificarNumero num)
    Nothing  -> putStrLn "Error: Por favor, introduce un número válido."

