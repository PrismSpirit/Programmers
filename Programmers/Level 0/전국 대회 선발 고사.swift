//
//  전국 대회 선발 고사.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181851
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
    var trimmedRank: [(Int, Int)] = []
    
    for i in 0..<rank.count {
        if attendance[i] {
            trimmedRank.append((i, rank[i]))
        }
    }
    
    let sortedRank = trimmedRank.sorted { $0.1 < $1.1 }
    
    return 10000 * sortedRank[0].0 + 100 * sortedRank[1].0 + sortedRank[2].0
}


print(solution([3, 7, 2, 5, 4, 6, 1], [false, true, true, true, true, false, false]))
print(solution([1, 2, 3], [true, true, true]))
print(solution([6, 1, 5, 2, 3, 4], [true, false, true, false, false, true]))
