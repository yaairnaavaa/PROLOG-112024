factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial(x-1)

main :: IO ()
main = do
    let x = 5
    if x == 0
        then do 
            print "El factorial de 0 es 1"
        else do
            print(factorial x)
