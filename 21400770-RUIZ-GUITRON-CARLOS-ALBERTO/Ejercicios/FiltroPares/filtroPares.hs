filtroPares :: [Int] -> [Int]
filtroPares lista = [x | x <- lista, even x]

main :: IO ()
main = do
    putStrLn "La lista [1,2,3,4,5,6,7,8] tiene los siguientes pares: "
    print (filtroPares [1,2,3,4,5,6,7,8])