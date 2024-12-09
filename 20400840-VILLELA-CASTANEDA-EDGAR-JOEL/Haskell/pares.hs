par :: Int -> Bool
par = even

main :: IO ()
main = do
    putStrLn "El número dos es par: "
    print(par 2)