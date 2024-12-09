import qualified Control.Exception as Exc
suma :: Num a => a -> a -> a
suma x y = x + y

main :: IO()
main = do
    putStrLn "Ingrese el primer número"
    line <- getLine
    let num   = read line :: Int
    putStrLn "Ingrese el segundo número"
    line <- getLine
    let num2  = read line :: Int
    putStrLn "La suma es:"
    print(suma num num2)
