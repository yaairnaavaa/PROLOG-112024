import Control.Exception

clasificarNumero :: Int -> String
clasificarNumero n
  | n < 0 = "Negativo"
  | n == 0 = "Cero"
  | otherwise = "Positivo"

main :: IO ()
main = do
  putStrLn "Ingrese un número entero"
  entrada <- getLine
  let numero = read entrada :: Int
  handle (\(SomeException _) -> putStrLn "Error al ingresar el dato") $ do
  putStrLn (clasificarNumero numero)
