par :: Int -> Bool
par x = x `mod` 2 == 0

main :: IO ()
main = do
 if par 3 then putStrLn "El número 3 es par." else putStrLn "El número 3 es impar."