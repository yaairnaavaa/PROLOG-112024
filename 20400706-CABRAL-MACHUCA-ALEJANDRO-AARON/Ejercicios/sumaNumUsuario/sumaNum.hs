sumanumeros :: Int -> Int -> Int
sumanumeros n1 n2 = n1 + n2

main :: IO()
main = do 
    putStrLn "Ingresa el primer numero: "
    num1 <- getLine
    putStrLn "Ingresa el segundo numero:"
    num2 <- getLine

    let n1 = read num1 :: Int
    let n2 = read num2 :: Int

    print(sumanumeros n1 n2)