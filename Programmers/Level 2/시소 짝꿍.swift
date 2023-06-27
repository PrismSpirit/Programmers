//
//  시소 짝꿍.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/152996
//
//  Created by Jaehun Lee on 2023/06/28.
//

import Foundation

func solution(_ weights: [Int]) -> Int64 {
    var result: Int64 = 0
    
    var torqueArr: [Int] = Array(repeating: 0, count: 4001)
    var weightArr: [Int] = Array(repeating: 0, count: 1001)
    
    for i in 0..<weights.count {
        for d in 2...4 {
            result += Int64(torqueArr[weights[i] * d])
        }
        
        if weightArr[weights[i]] > 0 {
            result -= Int64(weightArr[weights[i]]) * 2
        }
        
        weightArr[weights[i]] += 1
        for d in 2...4 {
            torqueArr[weights[i] * d] += 1
        }
    }
    
    return result
}


print(solution([100,180,360,100,270]))
