--calcular el factorial de un número
factorial :: Int -> Int 
factorial n = product [1..n] 

--Funcion principa l
main :: IO ()
main = do
    let n = 6
    print(factorial n)