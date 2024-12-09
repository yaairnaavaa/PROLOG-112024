main :: IO ()

main = do

 putStrLn "Digite el primero numero:"
 input1 <- getLine
 putStrLn "Digite el segundo numero:"
 input2 <- getLine
 let num1 = read input1 :: Int
 let num2 = read input2 :: Int
 let resultado = num1 + num2
 putStrLn ("La suma de los dos numeros es: " ++ show resultado)
 