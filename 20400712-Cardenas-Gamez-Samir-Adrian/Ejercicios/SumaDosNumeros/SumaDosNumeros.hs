suma :: Int-> Int-> Int
suma x y = x + y

main :: IO ()
main = do
    putStrLn "Ingresa un numero:"
    input <- getLine
    let numero1 = read input :: Int
    putStrLn "Ingresa un segundo numero:"
    input <- getLine
    let numero2 = read input :: Int
    putStrLn "La suma es:"
    print (suma numero1 numero2)
