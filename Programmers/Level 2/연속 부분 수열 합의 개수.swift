//
//  연속 부분 수열 합의 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/131701
//
//  Created by Jaehun Lee on 2023/06/16.
//

import Foundation

func solution(_ elements: [Int]) -> Int {
    let n = elements.count
    var resultSet: Set<Int> = []
    
    for i in 0..<n {
        var sum = 0
        
        for j in 0..<n {
            sum += elements[(i + j) % n]
            resultSet.insert(sum)
        }
    }
    
    return resultSet.count
}


print(solution([7,9,1,1,4]))
