import System.IO (readFile)

main :: IO ()
main = do
    contenido <- readFile "numeros.txt"
    let lista = map read (words contenido) :: [Int]
    print $ "La suma es: " ++ show (sum lista)