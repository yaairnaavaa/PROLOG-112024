-- Suma la entrada de 2 numeros y muestra su resultado
sumaN = ::[int] -> [int]
sumaN [] = 0
sumaN (x:xs) = x + sumaN xs

main :: IO ()
main = do
    putStrLn "num1"
    num1 <- getLine
    putStrLn "num1"
    num2 <-getLine

    print (sumaLista [read num1,read num2])


