esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

main :: IO ()
main = do
    putStrLn "Introduce un número:"
    input <- getLine
    let numero = read input :: Int
    if esPar numero
        then putStrLn "El número es par."
        else putStrLn "El número no es par."
