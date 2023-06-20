//
//  배열 두배 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120809
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    return numbers.map { $0 * 2 }
}


print(solution([1, 2, 3, 4, 5]))
print(solution([1, 2, 100, -99, 1, 2, 3]))
