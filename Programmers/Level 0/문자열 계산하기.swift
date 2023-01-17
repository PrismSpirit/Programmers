//
//  문자열 계산하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120902
//
//  Created by Jaehun Lee on 2023/01/17.
//

import Foundation

func solution(_ my_string: String) -> Int {
    let blankRemovedMyStringArr = my_string.split(separator: " ").map { String($0) }
    var numArr = blankRemovedMyStringArr.filter { !($0 == "+" || $0 == "-") }.map { Int($0)! }
    let operArr = blankRemovedMyStringArr.filter { $0 == "+" || $0 == "-" }
    
    for i in 0..<operArr.count {
        if operArr[i] == "-" {
            numArr[i + 1] *= -1
        }
    }
    
    return numArr.reduce(0, +)
}


print(solution("3 + 4"))
