//
//  배열의 평균값.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120817
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ numbers: [Int]) -> Double {
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}


print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(solution([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]))
