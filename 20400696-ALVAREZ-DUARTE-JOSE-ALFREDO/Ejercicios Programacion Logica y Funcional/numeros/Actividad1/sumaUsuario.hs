sumaUsuario :: Int -> Int -> Int
sumaUsuario num1 num2 = num1 + num2

main :: IO ()
main = do
    putStrLn "Introduce el primer número:"
    num1 <- readLn
    putStrLn "Introduce el segundo número:"
    num2 <- readLn
    putStrLn ( "Resultado: " ++ show (sumaUsuario num1 num2))