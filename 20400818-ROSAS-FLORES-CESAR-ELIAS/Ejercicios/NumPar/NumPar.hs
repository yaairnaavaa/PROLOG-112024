esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

main :: IO ()
main = do
    let n = 1
    if esPar n
        then putStrLn "Es par"
        else putStrLn "Es impar"
