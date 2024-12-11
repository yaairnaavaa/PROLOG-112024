esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

main :: IO ()
main = do 
  putStrLn "2 es Par"
  print (esPar 2)

  putStrLn "5 NO es Pa"
  print (esPar 5)
