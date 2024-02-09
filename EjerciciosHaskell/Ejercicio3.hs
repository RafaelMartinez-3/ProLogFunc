import Data.Map (Map)
import qualified Data.Map as Map

-- Función para dividir una frase en palabras
separar :: String -> [String]
separar = words

-- Función para calcular la longitud de una palabra
largo :: String -> Int
largo = length

-- Función para crear el diccionario de palabras y longitudes
creardiccionario :: String -> Map String Int
creardiccionario frase =
    let palabras = separar frase
        longitudPalabras = map largo palabras
    in Map.fromList (zip palabras longitudPalabras)

-- Ejemplo de uso
main :: IO ()
main = do
    let frase = "Esta es una frase de ejemplo"
    let diccionario = creardiccionario frase
    print diccionario
