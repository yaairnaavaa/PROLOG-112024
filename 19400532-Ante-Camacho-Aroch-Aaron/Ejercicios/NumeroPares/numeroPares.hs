import Text.Read (readMaybe)

filtroPares :: [Int] -> [Int]
filtroPares = filter even 

main :: IO ()
main = do
  putStrLn "Introduce una lista de números separados por espacios:"
  input <- getLine
  let parsedInput = mapM (readMaybe :: String -> Maybe Int) (words input)
  case parsedInput of
    Just nums -> do
      let pares = filtroPares nums
      putStrLn $ "Números pares: " ++ show pares
    Nothing -> putStrLn "Error: Por favor, introduce una lista válida de números."

