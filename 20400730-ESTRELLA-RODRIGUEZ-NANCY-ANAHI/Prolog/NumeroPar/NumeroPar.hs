divicion :: Int -> Int
divicion x = x `mod` 2

main :: IO ()
main = do

    let x = 1
    if divicion x == 0
        then putStrLn "El número es par"
        else putStrLn "El número es impar"