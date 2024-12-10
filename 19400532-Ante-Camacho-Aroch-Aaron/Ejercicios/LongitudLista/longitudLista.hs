import Text.Read (readMaybe)

longitudLista :: [a] -> Int
longitudLista [] = 0    
longitudLista (_:xs) = 1 + longitudLista xs

main :: IO ()
main = do
  putStrLn "Introduce una lista de números separados por espacios:"
  input <- getLine
  let parsedInput = mapM (readMaybe :: String -> Maybe Int) (words input)
  case parsedInput of
    Just nums -> do
      let longitud = longitudLista nums
      putStrLn $ "Longitud de la lista: " ++ show longitud
    Nothing -> putStrLn "Error: Por favor, introduce una lista válida de números."

