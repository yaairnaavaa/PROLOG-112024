suma :: Int -> Int -> Int
suma x y = x + y

main :: IO()
main = do
    putStrLn "El resultado de la suma de los numeros '3' y '5' es: "
    print (suma 3 5)