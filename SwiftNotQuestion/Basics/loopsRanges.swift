//
//  loopsRanges.swift
//  Swift?NotQuestion
//
//  Created by Валерия Пономарева on 02.02.2026.
//

import Foundation

// Вспомогательная функция для этого файла
private func printHeader(_ title: String) {
    print("\(title)")
}

public func task35() {
    printHeader("Задача 35: Range - Pushkin's life")
    let lifePushkin = 1799...1837
    print("A.S. Pushkin was born in \(lifePushkin.lowerBound)")
    print("A.S. Pushkin died in \(lifePushkin.upperBound)")
}

public func task36() {
    printHeader("Задача 36: Range - Check: Pushkin and war 1877-1878 or Patriotic war 1812")
    let lifePushkin = 1799...1837
    let war = 1877...1878
    let patrioticWar = 1812
    
    print(lifePushkin.overlaps(war)) // false
    print(lifePushkin.contains(patrioticWar)) // true
}

public func task37() {
    printHeader("Задача 37: Range - Check count letters in user's name")
    
    let userName = "vale.ponick"
    print(userName.count) // 11
    let lettersOnly = userName.filter { $0.isLetter }
    print(lettersOnly.count)  // 10
}

public func task38() {
    printHeader("Задача 38: Цикл в цикле - Hi!")
    // цикл = повтори!
    for i in 1...2 { // для КАЖДОГО числа
        for char in "Hi!".filter({ $0.isLetter }) { // для КАЖДОЙ буквы
            print(char)
        }
    }
}

public func task39() {
    printHeader("Задача 39: User -> enter name. Print 7 items")
    
    let userName = safeStringInput(prompt: "Enter your name: ")
    for i in 1...7 {
        print("\(i) \(userName)")
    }
}

public func task40() {
    printHeader("Задача 40: User -> enter name. Print 7 items")
    
    let userName = safeStringInput(prompt: "Enter your name: ")
    for i in 1...7 {
        print("\(i) \(userName)")
    }
}

public func task41() {
    printHeader("Задача 41: User -> enter name. Print each letter on line")
    
    let userName = safeStringInput(prompt: "Enter your name: ")
    for char in userName.filter(\.isLetter) {
        print("\(char)")
    }
}

public func task42() {
    printHeader("Задача 42: User -> enter name. Ask how many times to print. Print the name.")
    
    let userName = safeStringInput(prompt: "Enter your name: ")
    let timesInput = safeStringInput(prompt: "How many times to print your name?: ")
    
    let count = Int(timesInput) ?? 0
    for _ in 1...count {
        print(userName)
    }
}

public func task43() {
    printHeader("Задача 43: User enters name. Ask:  print each letter or whole name? How many times to print?  Print the name/letters according to choice N times.")
    
    let userName = safeStringInput(prompt: "Enter your name: ")
    let choice = safeStringInput(prompt: "Print each letter(l) or whole name(n)?: ")
    let timesInput = safeStringInput(prompt: "How many times?: ")
    let count = Int(timesInput) ?? 0
    
    let isLetterMode = choice.lowercased() == "l"
    
    for i in 1...count {
        if isLetterMode {
            for char in userName.filter(\.isLetter) {
                print(char)
            }
        } else {
            print(userName)
        }
    }
}
    
public func task44() {
    printHeader("Задача 44: User enters integer from 1 to 9. Print multiplication table for this integer.")
    
    guard let integer = safeIntInput(prompt: "Enter integer from 1 to 9: "), (1...9).contains(integer) else {
        print("❌ Please enter a number from 1 to 9")
        return
    }
    
    for i in 1...9 {
        let result = integer * i
        print("\(integer) * \(i) = \(result)")
    }
}

public func task45() {
    printHeader("Задача 45: Print multiplication table for integers from 1 to 9.")
    
    for i in 1...9 {
        print("Таблица умножения на \(i):")
        for n in 1...9 {
            let result = i * n
            print("\(i) * \(n) = \(result)")
        }
        print()
    }
}

public func task46() {
    printHeader("Задача 46: Выведи произведение ОДИНАКОВЫХ  чисел, состоящих из единиц: от 11 * 11 до 111111111 * 111111111")
    
    var number = 11
    
    while number <= 111111111 {
        let result = number * number
        print("\(number) * \(number) = \(result)")
        print()
        
        number = number * 10 + 1
    }
}

public func task47() {
    printHeader("Задача 47:")
        let name = safeStringInput(prompt: "Enter name")
        let age = safeIntInput(prompt: "Enter age") ?? 0
        let count = safeIntInput(prompt: "How many times?") ?? 0
                
    if count > 0 {
        for _ in 1...count {
            print("\(name) is \(age) years old")
        }
    }
                
        let letter = name.first
        print("First letter: \(letter.map { "\($0)" } ?? "none")")
}

public func task48() {
    printHeader("Задача 48: Loop while - User: enter number and + sum. While sum < 100 -> code run. Print result.")
    
    var sum = 0
    
    while sum < 100 {
        print("Current sum: \(sum). Need \(100 - sum) more.")
        
        // 1️⃣ Защита от неверного ввода
        guard let number = safeIntInput(prompt: "Enter integer: ") else {
            print("❌ Invalid input, try again.")
            continue
        }
        // 2️⃣ Защита от отрицательных чисел (опционально)
        guard number >= 1 else {
            print("⚠️ Enter positive integer: ")
            continue
        }
        sum += number
        // 3️⃣ Красивый вывод
        if sum >= 100 {
            print("🎉 Goal reached! Sum: \(sum)")
        } else {
            print("✅ Current sum: \(sum)")
        }
    }
    print("🔥 Final sum: \(sum)")
    pressEnterToContinue() // ✅ Пауза как в других задачах
}

public func task49() {
    printHeader("Задача 49: While loop - user enters numbers until sum >= 100. Print final sum and count of inputs.")
}
