filtrarPares :: [Int] -> [Int]
filtrarPares [] = []
filtrarPares (x:xs)
  | even x    = x : filtrarPares xs
  | otherwise = filtrarPares xs

main :: IO ()
main = do
  putStrLn "Filtro de números pares [1,2,3,4,5,6]:"
  print (filtrarPares [1, 2, 3, 4, 5, 6])