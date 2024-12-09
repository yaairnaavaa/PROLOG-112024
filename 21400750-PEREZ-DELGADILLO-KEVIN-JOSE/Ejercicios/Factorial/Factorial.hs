factorial :: Int -> Int
factorial 0 = 1 
factorial numero = numero * factorial (numero - 1) 

main :: IO()
main = do

    putStrLn "El factorial de 6 es: "
    print (factorial 6)