suma :: Int -> Int -> Int
suma x y = x + y

main :: IO ()
main = do

    putStrLn "Ingrese el primer número: "
    x <- getLine

    putStrLn "Ingrese el segundo número: "
    y <- getLine

    putStrLn "La suma es: "
    putStrLn(show (suma (read x :: Int) (read y :: Int)))