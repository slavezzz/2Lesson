import UIKit

//1. Написать функцию, которая определяет, четное число или нет.

func f1 (value: Int) {
    let y1 = value
    let y2 = y1%2
    _ = y2 == 0 ? print("\(value) делится на 2") : print("\(value) не делится на 2")
}

f1(value: 4)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func f2 (value: Int) {
    let y1 = value
    let y2 = y1%3
    _ = y2 == 0 ? print("\(value) делится на 2") : print("\(value) не делится на 3")
}

f2(value: 4)


//3. Создать возрастающий массив из 100 чисел.

var array = [Int]()
var i = 0

while i<100 {
    array.append( i + 1 )
    i = i + 1
}


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for element in array where (element%2 == 0) || (element%3 == 0) {
    array.remove(at : (array.firstIndex(of: element)!))
}

print(array)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func fibonacci (n: Int) -> (Double) {
    if (n < 3) {
        return 1
    } else {
        var z1 : Double = 1, z2 : Double = 1, z:Double // через запятую
        for _ in 3...n {
            z = z1+z2
            z1 = z2
            z2 = z
        }
        return z2
    }
}

var fibArray = [Double]()
fibArray.append(0)
var n  = 100
for i in 1...n {
    fibArray.append(fibonacci(n: i))
}
print(fibArray)

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

func Prime (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func PrimeArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if Prime(num: i) {
            results.append(i)
        }
        i = i + 1
    }
    
    return results
}
print (PrimeArray())
