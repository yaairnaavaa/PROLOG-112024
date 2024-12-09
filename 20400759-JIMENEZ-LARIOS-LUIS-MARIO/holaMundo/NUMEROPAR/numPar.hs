esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

main :: IO ()
main = do
   putStrLn "Ingresa un número: "
   input <- getLine
   let numero = read input :: Int
   if esPar numero
      then putStrLn "Es par."
      else putStrLn "Error fatal."
