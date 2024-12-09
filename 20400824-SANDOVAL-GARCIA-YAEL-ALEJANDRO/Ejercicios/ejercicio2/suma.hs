suma :: Int -> Int -> Int
suma x y = x + y

main :: IO()
main = do
    putStrLn "La suma de 127 y 228 es:"
    print (suma 127 228)