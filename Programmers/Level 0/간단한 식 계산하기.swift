//
//  간단한 식 계산하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181865
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ binomial: String) -> Int {
    let splittedBinomial = binomial.split(separator: " ")
    let a = Int(splittedBinomial[0])!
    let b = Int(splittedBinomial[2])!
    let op = splittedBinomial[1]
    
    switch op {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    default:
        return 0
    }
}


print(solution("43 + 12"))
print(solution("0 - 7777"))
print(solution("40000 * 40000"))
