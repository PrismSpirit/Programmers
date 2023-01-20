//
//  중앙값 구하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120811
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ array: [Int]) -> Int {
    return array.sorted()[(array.count - 1) / 2]
}


print(solution([1, 2, 7, 10, 11]))
print(solution([9, -1, 0]))
