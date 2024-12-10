sumaNumeros :: Int -> Int -> Int
sumaNumeros x y = x + y

main :: IO ()
main = do
  putStrLn "Ingrese el primer número"
  entrada <- getLine
  let numero1 = read entrada :: Int
  putStrLn "Ingrese el segundo número"
  entrada2 <- getLine
  let numero2 = read entrada2 :: Int
  putStrLn $ "La suma es: " ++ show (sumaNumeros numero1 numero2)
