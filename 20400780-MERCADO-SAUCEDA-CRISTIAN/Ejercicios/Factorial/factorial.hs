fact n = if n == 0 then 1 else n * fact(n-1)
main :: IO()
main = do
    let v = 5
    putStrLn "El factorial de 5"
    putStrLn (fact v)