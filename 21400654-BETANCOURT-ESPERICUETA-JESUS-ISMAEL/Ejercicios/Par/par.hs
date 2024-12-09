par :: Int -> Bool 

par x  = x `mod`2 == 0



main :: IO ()

main = do

    let x = 4

    if par x 
        then do
            putStrLn "El número es par:"
            print (x)
        else do
            putStrLn "El resultado es impar"

