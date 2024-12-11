-- Función principal
clasificarNumero :: Int -> String
clasificarNumero n
  | n > 0     = "El número es positivo."
  | n < 0     = "El número es negativo."
  | otherwise = "El número es cero."

-- Función main para probar la clasificación
main :: IO ()
main = do
  putStrLn "Ingresa un número:"
  input <- getLine
  case reads input :: [(Int, String)] of
    [(numero, "")] -> putStrLn (clasificarNumero numero) -- Entrada válida
    _ -> putStrLn "Error: La entrada no es un número válido." -- Entrada inválida
