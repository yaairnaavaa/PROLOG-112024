par :: Int -> Bool
par x = x `mod` 2 == 0

main :: IO ()
main = do
    putStrLn "Introduce un número:"
    input <- getLine
    let numero = read input :: Int
    if par numero
        then putStrLn "El número es par"
        else putStrLn "El número es impar"
