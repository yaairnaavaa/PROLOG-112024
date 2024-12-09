par :: Int -> Bool
par x = x `mod` 2 == 0

main :: IO ()
main = do
 print(par 5)