import Data.Char (toUpper)
import Data.Map (Map)
import qualified Data.Map as Map

-- Función para asignar calificaciones a las notas
notas:: Int -> String
notas nota
    | nota >= 95 = "Excelente"
    | nota >= 85 = "Notable"
    | nota >= 75 = "Bueno"
    | nota >= 70 = "Suficiente"
    | otherwise = "Desempenio insuficiente"

-- Función para convertir las asignaturas a mayúsculas y asignar calificaciones
calificacionesAlumno :: Map String Int -> Map String String
calificacionesAlumno calif =
    let asignaturasMayusculas = Map.mapKeys (map toUpper) calif
        calificaciones = Map.map notas calif
    in calificaciones

-- Ejemplo de uso
main :: IO ()
main = do
    let notasAlumno = Map.fromList [("Matematicas", 90), ("Historia", 80), ("Ciencias", 65)]
    let calificaciones = calificacionesAlumno notasAlumno
    print calificaciones
