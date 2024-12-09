tamaño :: [Int] -> Int
tamaño [] = 0
tamaño (x:xs) = 1 + tamaño xs

main :: IO ()
main = do
  putStrLn "Introduce una lista de numeros"
  input <- getLine
  let numeros = map read (words input) :: [Int]
  let num = tamaño numeros
  putStrLn $ "hay " ++ show num ++ " numeros"
