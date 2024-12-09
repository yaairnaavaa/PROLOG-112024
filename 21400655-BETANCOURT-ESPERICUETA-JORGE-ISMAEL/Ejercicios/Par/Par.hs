esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

main :: IO ()
main = do
    let numero = 4
    if esPar numero
        then putStrLn "El número 4 es par."
        else putStrLn "El número 4 no es par."
