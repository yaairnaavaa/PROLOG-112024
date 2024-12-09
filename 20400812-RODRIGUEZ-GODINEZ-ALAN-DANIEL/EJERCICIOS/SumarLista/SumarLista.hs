sumalista :: [Int] -> Int
sumalista [] = 0
sumalista (x:xs) = x + sumalista xs


main :: IO ()
main = do
 putStrLn "Suma Lista [1, 2, 3, 4, 5]:"
 print (sumalista [1, 2, 3, 4, 5])