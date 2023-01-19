//
//  공 던지기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120843
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ numbers: [Int], _ k: Int) -> Int {
    return numbers[2 * (k - 1) % numbers.count]
}


print(solution([1, 2, 3, 4], 2))
print(solution([1, 2, 3, 4, 5, 6], 5))
print(solution([1, 2, 3], 3))
