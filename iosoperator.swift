import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    guard b != 0 else {
        print("ЕРРОР:нельзя делить на ноль.")
        return nil
    }
    return a / b
}

func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

func performOperation() {
    print("Введите число:")
    guard let number1 = Double(readLine() ?? "") else {
        print("ЕРРОР: Неверный ввод числа.")
        return
    }

    print("Введите оператор (+, -, *, /, ^):")
    guard let operatorInput = readLine(), let operatorSymbol = operatorInput.first else {
        print("ЕРРОР: еверный ввод оператора.")
        return
    }

    print("Введите число:")
    guard let number2 = Double(readLine() ?? "") else {
        print("ЕРРОР: Неверный ввод числа")
        return
    }

    var result: Double?

    switch operatorSymbol {
    case "+":
        result = add(number1, number2)
    case "-":
        result = subtract(number1, number2)
    case "*":
        result = multiply(number1, number2)
    case "/":
        result = divide(number1, number2)
    case "^":
        result = power(number1, number2)
    default:
        print("ЕРРОР: Неверная операция.")
    }

    if let result = result {
        print("Результат: \(result)")
    }
}

performOperation()
