-- tarea para la casa: determinar si un númmero es par
concatenar :: String -> String -> String
concatenar str1 str2 = str1 ++ str2

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

main :: IO()
main = do
    let n = 8
    if isEven n
        then print (concatenar "efectivamente " "es par.")
        else putStrLn "Efectivamente es impar"