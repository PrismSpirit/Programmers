//
//  과일 장수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/135808
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var result = 0
    
    let descSortedScore = score.sorted(by: >)
    
    for i in 0..<score.count {
        if i % m == m - 1 {
            result += descSortedScore[i] * m
        }
    }
    
    return result
}


print(solution(3, 4, [1, 2, 3, 1, 2, 3, 1]))
print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))
