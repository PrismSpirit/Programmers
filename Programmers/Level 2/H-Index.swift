//
//  H-Index.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42747
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ citations: [Int]) -> Int {
    let sortedCitations = citations.sorted(by: >)
    let n = sortedCitations.count
    
    for i in 0..<n {
        if sortedCitations[i] < i + 1 {
            return i
        }
    }
    
    return n
}


print(solution([3, 0, 6, 1, 5]))
