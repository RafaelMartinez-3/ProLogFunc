-- Definir la función de descuento que toma dos valores de la lista products
desc :: Float -> Float -> Float
desc precio descuento = precio - (precio * descuento / 100)

-- Definir la función cestadesc
cestadesc :: [Float] -> (Float -> Float -> Float) -> [Float]
cestadesc [] _ = []  
cestadesc (x:y:xs) f = f x y : cestadesc xs f  -- Pasar el valor actual y el siguiente como argumentos a la función

-- Lista de productos
products :: [Float]
products = [1.0, 10.0, 2.0, 20.0, 3.0, 30.0, 4.0, 40.0, 5.0, 50.0, 6.0, 60.0]

-- Aplicar descuento a los productos
preciodesc :: [Float]
preciodesc = cestadesc products desc

-- Imprimir el resultado
main :: IO ()
main = do
    print preciodesc
