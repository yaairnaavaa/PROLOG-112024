par :: Int -> Bool
par x = x `mod` 2 == 0

main :: IO()
main = do
    putStrLn ("El numero "++show 3++" es par : "++show(par 3))
    putStrLn ("El numero "++show 4++" es par : "++show(par 4))