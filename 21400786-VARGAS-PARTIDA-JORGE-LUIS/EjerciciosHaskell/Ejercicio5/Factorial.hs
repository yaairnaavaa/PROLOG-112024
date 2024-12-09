factorial :: Int -> Int
factorial fac =
    if (fac == 0 || fac == 1) then 1
    else fac * factorial (fac-1)

    --Funcion principal
main :: IO ()
main = do

    putStrLn "Factorial de 6:"
    print (factorial 6)
    