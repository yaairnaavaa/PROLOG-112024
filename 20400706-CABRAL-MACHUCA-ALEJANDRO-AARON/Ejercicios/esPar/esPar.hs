--determinar si un número es par
esPar :: Int -> Bool
esPar n = n `mod` 2 == 0 --si el resto de la division de n entre 2 es 0 

--Funciopn principal
main :: IO ()
main = do
    let n = 10
    if esPar n
        then putStrLn "El número es par"
        else putStrLn "El número es impar"
