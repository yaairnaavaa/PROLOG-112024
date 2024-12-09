import Data.Char (isDigit)

-- Función principal
main :: IO ()
main = do
    putStrLn "Introduce una lista de números separados por espacios:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    let evenNumbers = filter even numbers
    putStrLn "Los números pares de la lista son:"
    print evenNumbers