//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


// задание 1
import Foundation

let a: Double = 1.0
let b: Double = 1.0
print("Длина катета 1 =", a,"сантиметров")
print("Длина катета 2 =", b,"сантиметров")
let c = sqrt(pow(a,2) + pow(b,2))
print("Длина гипотенузы =", c,"сантиметров")
let p = a + b + c
print("Периметр прямоугольного треугольника =",p,"квадратных сантиметров")
let s = a * b / 2
print("Площадь прямоугольного треугольника =",s,"кубических сантиметров")




//задание 2
import Foundation

let a: Double = 3
let b: Double = 4
let c: Double = 1
let disc: Double
disc = b * b - 4 * a * c
print("Дискриминант равен =", disc)
var x = [nil, nil] as [Any?]
if disc == 0.0 { x[0] = (-b + sqrt(disc)) / (2 * a); print("Уравнение имеет единственны корень =", x[0]) }
else if disc < 0.0 { print("У уравнения нет корней") }
else { x[0] = (-b + sqrt(disc)) / (2 * a); x[1] = (-b - sqrt(disc)) / (2 * a);
    print("Первый корень уравнения =", x[0]);
    print("Второй корень уравнения =", x[1]) }



//задание 3
import Foundation
print("Введите в строку снизу справа сумму депозита")
let c = readLine(strippingNewline: true)
var C = NumberFormatter().number(from: c!)?.doubleValue
print("Вы ввели сумму депозита =",C!,"рублей")
print("Введите в строку ставку договора депозита в числовом выражении в базовых пунктах(например, если ставка депозита 9.5% годовых, то в строку вводится значение 95)")
let r = readLine(strippingNewline: true)
var R = NumberFormatter().number(from: r!)?.doubleValue
R = R! / 1000
print("Ставка",R! * 100,"%")
let sum: Double = C! * pow((1 + R!), 5)
//print(pow((1 + R!), 5))
let SUM = (String(format:"%.2f", sum))
print("За период 5 лет при ставке",R! * 100,"%"," и при условии ежегодной капитализации процентов сумма на депозите составит", SUM)
