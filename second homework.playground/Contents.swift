//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

let nibFile = NSNib.Name(rawValue:"MyView")
var topLevelObjects : NSArray?

Bundle.main.loadNibNamed(nibFile, owner:nil, topLevelObjects: &topLevelObjects)
let views = (topLevelObjects as! Array<Any>).filter { $0 is NSView }

// Present the view in Playground
PlaygroundPage.current.liveView = views[0] as! NSView

// деление на 2 без остатка

import Foundation
print("Введите в строку снизу справа целое число и мы скажем четное оно или нечетное")
let c = readLine(strippingNewline: true)
var C = NumberFormatter().number(from: c!)?.intValue
let result: String
func WhatNumber (a: Int) -> String {
    var z: String
    if a % 2 == 0 { z = "Введенное число является четным" }
    else { z = "Введенное число является нечетным" }
    return z
}
result = WhatNumber(a: C!)
print(result)


//-------------------------------------------------------------------------------------
//деление на 3 без остатка

print("Введите в строку снизу справа целое число и мы скажем делится ли оно на 3 без остатка")
let c = readLine(strippingNewline: true)
var C = NumberFormatter().number(from: c!)?.intValue
let result: String
func WhatNumber (a: Int) -> String {
    var z: String
    if a == 0 {z = "Введенное число 0, делаится на любое число без остатка" }
    else if a % 3 == 0 { z = "Введенное число делится на 3 без остатка" }
    else { z = "Введенное число не делится на 3 без остатка" }
    return z
}
result = WhatNumber(a: C!)
print(result)


//-------------------------------------------------------------------------------------
// создание массива из возрастающих элементов


func grouth (a: Int, b: Int) -> [Int] // a - начальное значение, b - значение на которое увеличивается каждый следующий элемент после начального
{
    var x = [Int] (repeating: 0, count: 100)
    x[0] = a
    var c = 1
    while c < 100 {
        x[c] = x[c-1] + b
        c = c + 1
    }
    return x
}
let c = grouth(a:2,b:1)
print(c)


//-------------------------------------------------------------------------------------

// создание массива и фильтрация

func grouth (a: Int, b: Int) -> [Int]
{
    var x = [Int] (repeating: 0, count: 100)
    x[0] = a
    var c = 1
    while c < 100 {
        x[c] = x[c-1] + b
        c = c + 1
    }
    return x
}
var c = grouth(a:5,b:2)
var v = c.count
print(c)
print("Количество элементов в массиве", v)

func delete (C: inout [Int]) -> [Int]
{
    var number = [Int] ()
    for i in 0..<C.count   {
        if C[i] % 2 == 0||((C[i] % 3 > 0)&&(C[i] % 3 > 0))
        {
            //print("Индекс элемента", i)
            //print("Элеммент", C[i])
            number.append(C[i])
        }
    }
    print("После выполнения условий необходимо удалить", number.count, " элементов" )
    for i in number
    {
        var ind = C.index(of:i)
        C.remove(at: ind!)
    }
    return C
}
//var d = [6,3,2,1,6,1]
c = delete(C: &c )
print(c)
v = c.count
print("Количество элементов в массиве", v)

//-------------------------------------------------------------------------------------

//фибоначи
var x = [1.00,2.00,3.00]

func fibo (C: inout [Double]) -> [Double]
{
    var size = C.count
    var start = size + 1
    for i in start...100
    {
        //print(i)
        //print(C[i-2])
        //print(C[i-3])
        var c = C[i-2] + C[i-3]
        print(c)
        C.append(c)
    }
    return C
}

var c = fibo(C: &x)
var s = c.count
print(c)
print(s)

//-------------------------------------------------------------------------------------
//Генератор простых чисел

func SimpleNumber (C: Int)-> [Int]
{
    var c = [C]
    var x = 3
    var E = [Int]()
    var indicator: Bool = true
    while c.count<100 {
        for i in c {
            let e = x % i
            E.append(e)
        }
        for y in E { if y == 0
        { indicator = false } }
        if indicator == false { x = x + 1 }
        else { c.append(x) }
        indicator = true
        E.removeAll()
    }
    
    return c
}
let z = SimpleNumber(C:2)
print(z)
