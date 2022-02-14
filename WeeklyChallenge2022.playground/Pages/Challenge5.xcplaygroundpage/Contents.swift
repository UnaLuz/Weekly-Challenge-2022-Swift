import Foundation
import UIKit

/*
 * Reto #5
 * ASPECT RATIO DE UNA IMAGEN
 * Fecha publicación enunciado: 01/02/22
 * Fecha publicación resolución: 07/02/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Crea un programa que se encargue de calcular y el aspect ratio de una imagen a partir de una url.
 * - Url de ejemplo: https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una imagen de 1920*1080px.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func printAspectRatio(of urlString: String){
    if let url = URL(string: urlString){
        do {
            let data = try Data(contentsOf: url)
            if let image = UIImage(data: data){
                print("Aspect ratio:", aspectRatio(img: image))
            }
        } catch {
            print("An error occured processing the url \(urlString): \(error)")
        }
    }
}

func aspectRatio(img: UIImage) -> String{
    let width = Int(img.size.width)
    let height = Int(img.size.height)
    
    let mcd: Int = getMCD(a: width, b: height)
    
    return "\(width / mcd):\(height / mcd)"
}

func getMCD(a: Int, b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

let urlString = "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png"

printAspectRatio(of: urlString)
