import Foundation

print("1. Введите первую строку:")
let firstLine = readLine() ?? ""
print("Введите вторую строку:")
let secondLine = readLine() ?? ""
let combinedString = firstLine + secondLine
print("Результат объединения: \(combinedString)\n")

print("2. Введите строку для переворота:")
let inputString = readLine() ?? ""
let flippedString = String(inputString.reversed())
print("Результат переворота: \(flippedString)\n")

print("3. Введите строку для подсчета символов:")
let countString = readLine() ?? ""
let characterCount = countString.filter { !$0.isWhitespace }.count
print("Количество символов (без учета пробелов): \(characterCount)\n")

print("4. Введите основную строку:")
let mainString = readLine() ?? ""
print("Введите подстроку для поиска:")
let substring = readLine() ?? ""
if let range = mainString.range(of: substring) {
    let position = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
    print("Первое вхождение подстроки на позиции \(position)")
} else {
    print("Подстрока не найдена в основной строке.")
}

