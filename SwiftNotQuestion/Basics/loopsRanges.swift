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
    let lifePushkin = (1799...1837)
    print("A.S. Pushkin was born in \(lifePushkin.lowerBound)")
    print("A.S. Pushkin died in \(lifePushkin.upperBound)")
}

public func task36() {
    printHeader("Задача 36: Range - Check: Pushkin and war 1877-1878 or Patriotic war 1812")
    let lifePushkin = (1799...1837)
    let war = (1877...1878)
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
