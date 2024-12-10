
sumarDosNumeros :: Int -> Int -> Int
sumarDosNumeros x y = x + y 

main :: IO ()
main = do
    putStrLn "Dame el primer número:"
    x <- readLn
    putStrLn "Dame el segundo número:"
    y <- readLn
    putStr "La suma es: "
    print (sumarDosNumeros x y)