sumar :: Float-> Float
sumar x = x+1.0 

sumar1 ::  (Float -> Float) -> [Float]-> [Float]
sumar1  _ []= []  
sumar1 f (x:xs) = f x : sumar1 f xs 

-- Lista de productos
products :: [Float]
products = [1.0, 10.0, 2.0, 20.0, 3.0, 30.0, 4.0, 40.0, 5.0, 50.0, 6.0, 60.0]

-- Aplicar descuento a los productos
productsmas1 :: [Float]
productsmas1 = sumar1 sumar products

-- Imprimir el resultado
main :: IO ()
main = do
    print productsmas1
