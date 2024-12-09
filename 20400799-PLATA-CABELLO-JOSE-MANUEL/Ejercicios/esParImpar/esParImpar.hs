esPar :: Int -> Bool

esPar n = mod n 2 == 0

main :: IO ()

main = do
 putStrLn "¿El número 8 es par?"
 print (esPar 4)

 putStrLn "¿El numero 7 es par?"
 print(esPar 7)
