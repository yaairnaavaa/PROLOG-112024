suma :: Int -> Int -> Int
suma x y = x + y

main :: IO()
main = do
    putStrLn "Por favor, ingrese variable A:"
    inputA <- getLine
    let varA = read inputA :: Int

    putStrLn "Por favor, ingrese variable B:"
    inputB <- getLine
    let varB = read inputB :: Int

    putStrLn "La suma de A + B es:"
    print (suma varA varB)
