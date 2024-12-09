suma :: Int ->  Int -> Int -> Int
suma x y z = x + y + z

main :: IO ()
main = do
  putStrLn "Ingresa el primero numero: "
  input <- getLine
  let numero1 = read input
  putStrLn "Ingresa el segundo numero: "
  input <- getLine
  let numero2 = read input
  putStrLn "Ingresa el tercernumero numero: "
  input <- getLine
  let numero3 = read input
  putStrLn "La suma de los numeros da: "
  print (suma numero1 numero2 numero3)

