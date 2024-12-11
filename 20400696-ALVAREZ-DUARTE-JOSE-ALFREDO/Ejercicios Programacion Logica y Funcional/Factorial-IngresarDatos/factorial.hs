factorial :: Int -> Int
factorial n = product [1..n]

main :: IO ()
main = do
  putStrLn "Introduce un número para calcular su factorial:"
  input <- getLine
  let n = read input :: Int
  putStrLn ("El factorial de " ++ show n ++ " es:")
  print (factorial n)