fact :: (Eq t, Num t) => t -> t
fact n = if n == 0 then 1 else n * fact(n-1)

fact2 :: (Num a, Enum a) => a -> a
fact2 n = product [1..n] 

main :: IO()
main = do
    putStrLn ("El factorial de 5 es: " ++ show (fact 5))
    putStrLn ("El factorial de 7 es: " ++ show (fact2 7))