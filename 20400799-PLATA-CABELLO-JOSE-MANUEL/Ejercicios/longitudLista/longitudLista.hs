tam :: [a] -> Int
tam xs = foldr (\x acc -> acc + 1) 0 xs

main :: IO ()
main = do
    let numeros = [1, 2, 3, 4, 5,8,9] :: [Int]
    let long = tam numeros
    putStrLn $ "La lista tiene " ++ show long ++ " elementos."  -- La lista tiene 5