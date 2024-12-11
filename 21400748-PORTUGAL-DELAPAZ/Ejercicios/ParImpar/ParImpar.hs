-- Función principal
esParOImpar :: Int -> String
esParOImpar n
    | even n    = "El número es par."
    | otherwise = "El número es impar."

-- Función para ejecutar el programa
main :: IO ()
main = do
    putStrLn "Introduce un número:"
    input <- getLine
    let numero = read input :: Int
    putStrLn (esParOImpar numero)
