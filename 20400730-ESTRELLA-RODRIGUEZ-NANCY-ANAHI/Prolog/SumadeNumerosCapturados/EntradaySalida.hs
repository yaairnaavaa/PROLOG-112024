suma :: Int -> Int -> Int
suma x y = x + y

main :: IO ()
main = do 
  putStrLn "Dame un numero"
  num1 <- getLine
  let nume1 = read num1 :: Int
  putStrLn "Dame el segundo numero"
  num2 <- getLine
  let nume2 = read num2 :: Int
  putStrLn "La suma es:"
  print (suma nume1 nume2)
