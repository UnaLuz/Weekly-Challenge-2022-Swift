import Foundation

/*
 * Reto #3
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func isPrime(n: Int) -> Bool {
    if n < 0 {
        return isPrime(n: n * -1)
    }
    if n < 2 {
        return false
    }
    if n == 2 {
        return true
    }
    
    let half = (n / 2) + 1
    var isPrimeNumber = true
    
    for i in 2...half {
        if n % i == 0 {
            isPrimeNumber = false
            break
        }
    }
    
    return isPrimeNumber
}

for i in 1...100 {
    if isPrime(n: i) {
        print(i)
    }
}
