import Foundation

/*
 * Reto #1
 * ¿ES UN ANAGRAMA?
 * Fecha publicación enunciado: 03/01/22
 * Fecha publicación resolución: 10/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Bool) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🗓reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */
func esAnagrama(_ palabra1: String, de palabra2: String) -> Bool{
    if palabra1.lowercased().elementsEqual(palabra2.lowercased()){
        return false
    }
    
    let palabra1Ordenada = palabra1.lowercased().sorted()
    let palabra2Ordenada = palabra2.lowercased().sorted()
    
    return palabra1Ordenada.elementsEqual(palabra2Ordenada)
}

let palabras = ["ropa", "", "pAro", "pArodiA"]

for palabra in palabras {
    for anagrama in palabras {
        print("\(palabra) y \(anagrama)", esAnagrama(palabra, de: anagrama) ? "son anagramas": "no son anagramas")
    }
}
