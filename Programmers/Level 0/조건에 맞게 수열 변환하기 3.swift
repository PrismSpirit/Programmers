//
//  조건에 맞게 수열 변환하기 3.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181835
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ arr: [Int], _ k: Int) -> [Int] {
    return k % 2 != 0 ? arr.map { $0 * k } : arr.map { $0 + k }
}


print(solution([1, 2, 3, 100, 99, 98], 3))
print(solution([1, 2, 3, 100, 99, 98], 2))
