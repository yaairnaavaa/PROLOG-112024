import System.IO

sumaLista:: [Int] -> Int
sumaLista [] = 0
sumaLista (x: xs) = x + sumaLista xs

convertirCadena :: String -> [Int]
convertirCadena cadena = map read (words cadena) 

main :: IO()
main = do
    lista <- readFile "numeros.txt" 
    putStrLn "La suma de los números en el archivo de texto es"
    print (sumaLista (convertirCadena lista))