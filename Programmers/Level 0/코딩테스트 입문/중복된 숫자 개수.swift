//
//  중복된 숫자 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120583
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    return array.filter { $0 == n }.count
}


print(solution([1, 1, 2, 3, 4, 5], 1))
print(solution([0, 2, 3, 4], 1))
