//
//  배열 자르기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120833
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
    return Array(numbers[num1...num2])
}


print(solution([1, 2, 3, 4, 5], 1, 3))
print(solution([1, 3, 5], 1, 2))
