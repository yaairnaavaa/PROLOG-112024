suma :: Int -> Int -> Int

suma x y = x + y

main :: IO ()

main = do
    putStrLn "Ingrese los números: "
    input1 <- getLine 
    let x = read input1 :: Int
    putStrLn "Ingrese el segundo número: "
    input2 <- getLine 
    let y = read input2 :: Int
    print (suma x y)