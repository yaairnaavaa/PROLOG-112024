import System.IO (readFile)

sumNumbersFromFile :: FilePath -> IO ()

sumNumbersFromFile filePath = do
    content <- readFile filePath
    let numbers = map read (lines content) :: [Int]
    let total = sum numbers
    putStrLn "La suma de los números es: "
    print total

main :: IO ()
main = do
    sumNumbersFromFile "SumaNumerosFichero/numeros.txt"