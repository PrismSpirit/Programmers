//
//  특별한 이차원 배열 1.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181833
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ n: Int) -> [[Int]] {
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        result[i][i] = 1
    }
    
    return result
}


print(solution(3))
print(solution(6))
print(solution(1))
