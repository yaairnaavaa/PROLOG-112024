suma :: Int -> Int -> Int
suma x y = x + y

main :: IO ()
main = do 
  putStrLn "La suma de 3 y 5 es:"
  print (suma 3 5)
