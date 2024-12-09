sumarNumeros :: (Int, Int) -> Int
sumarNumeros (a,b) = a + b


main :: IO ()
main = do
    putStrLn "Introduce el primer número"
    inputA <- getLine
    let num1 = read inputA :: Int

    putStrLn "Introduce el segundo número"
    inputB <- getLine
    let num2 = read inputB :: Int

    putStrLn "La suma de ambos números es:"
    print(sumarNumeros(num1, num2))

    