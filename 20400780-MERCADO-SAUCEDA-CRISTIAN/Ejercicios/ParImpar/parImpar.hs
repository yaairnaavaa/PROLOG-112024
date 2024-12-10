esPar :: Integer -> Bool
esPar n = n `mod` 2 == 0

main :: IO ()
main = do
   let n =2
   if esPar n
      then putStrLn "Par"
      else putStrLn "Impar"