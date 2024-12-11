--

main :: IO ()
main = do
    putStrLn "Ingrese una lista de números separados por espacios:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let result = sum numbers
    putStrLn $ "La suma de los números es: " ++ show result