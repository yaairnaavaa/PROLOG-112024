longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

main :: IO ()
main = do 
  
  let listaNumeros = [1,2,3,4,5,6,9,10] :: [Int]
  let long = longitud listaNumeros
  putStrLn $ "La longitud de la lista " ++ show listaNumeros ++ " es: " ++ show long
