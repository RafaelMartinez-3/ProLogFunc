-- Función para calcular la suma de los cuadrados de los elementos del vector
cuadradosuma :: [Float] -> Float
cuadradosuma [] = 0
cuadradosuma (x:xs) = x * x + cuadradosuma xs

-- Función para calcular el módulo del vector
modvec :: [Float] -> Float
modvec vec = sqrt (cuadradosuma vec)

-- Ejemplo de uso
main :: IO ()
main = do
    let vector = [3.0, 4.0] -- Vector [3, 4]
    let modulo = modvec vector
    print modulo
