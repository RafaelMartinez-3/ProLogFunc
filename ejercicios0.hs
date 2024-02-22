module Ejercicios where

    
sumarLista :: [Int] -> Int
sumarLista (x:xs) = x + sumarLista(xs)
sumarLista [] = 0

factorial :: Int -> Int 
factorial 0 = 1
factorial (x) = x* factorial (x-1)

numerosPares :: Int -> [Int]
numerosPares (x) = if x > 0
                      then 
                        if x `mod` 2 == 0
                            then x : numerosPares (x - 1)
                        else numerosPares(x - 1)
                    else []

longitudCadena::String -> Int
longitudCadena (cadena) = length cadena

reversoLista::[a] -> [a]
reversoLista (cadena) = reverse cadena

duplicarElementos::[Int] -> [Int]
duplicarElementos (lista)= concatMap (\x -> [x, x]) lista

filtrarPares:: [Int] -> [Int]
filtrarPares [] = []
filtrarPares (x:xs) = if x `mod` 2 == 0
                      then x : filtrarPares xs
                      else filtrarPares xs

fibonacci :: Int -> Int
fibonacci x
        | x == 0    = 0
        | x == 1    = 1
        | otherwise = fibonacci (x-1) + fibonacci (x-2)

divisores:: Int -> [Int]
divisores (x) = [y | y <- [1..x], x `mod` y == 0]

esPalindromo :: String -> Bool
esPalindromo (cadena) = cadena == reverse cadena