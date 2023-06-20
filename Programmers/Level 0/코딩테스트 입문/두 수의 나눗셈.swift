//
//  두 수의 나눗셈.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120806
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    return Int(Double(num1) / Double(num2) * 1000)
}


print(solution(3, 2))
print(solution(7, 3))
print(solution(1, 16))
