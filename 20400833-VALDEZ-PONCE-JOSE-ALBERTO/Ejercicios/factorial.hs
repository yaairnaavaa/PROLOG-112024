factorial :: Int -> Int
factorial 0 = 1
factorial n = n*factorial (n - 1)

main :: IO()
main = do
    let n = 5
    print (factorial n)