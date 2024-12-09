suma :: Int -> Int -> Int
suma x y = x + y 

main :: IO()
main = do

    putStrLn "Escribe el primer numero"
    input <- getLine
    let numero1 = read input :: Int


    putStrLn "Escribe el segundo numero"
    input <- getLine
    let numero2 = read input :: Int

    putStrLn "El resultado de la suma es:"
    print(suma numero1 numero2)