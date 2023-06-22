//
//  연속된 부분 수열의 합.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/178870
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ sequence: [Int], _ k: Int) -> [Int] {
    let n = sequence.count
    var prevfromIdx = 0
    var prevtoIdx = 0
    var fromIdx = 0
    var toIdx = 0
    var value = sequence[0]
    var result: [[Int]] = []
    var isIdxUpdated = true
    
    while fromIdx < n && toIdx < n {
        if !isIdxUpdated {
            break
        }
        
        if value < k {
            if toIdx < n - 1 {
                toIdx += 1
                value += sequence[toIdx]
            }
        } else if value > k {
            value -= sequence[fromIdx]
            fromIdx += 1
            if fromIdx > toIdx {
                break
            }
        } else {
            if !result.isEmpty && (result.last![1] - result.last![0] > toIdx - fromIdx) {
                result = []
            }
            result.append([fromIdx, toIdx])
            
            if toIdx < n - 1 {
                toIdx += 1
                value += sequence[toIdx]
            }
        }
        
        if fromIdx == prevfromIdx && toIdx == prevtoIdx {
            isIdxUpdated = false
        }
        
        prevfromIdx = fromIdx
        prevtoIdx = toIdx
    }
    
    return result.first!
}


print(solution([1, 2, 3, 4, 5], 7))
print(solution([1, 1, 1, 2, 3, 4, 5], 5))
print(solution([2, 2, 2, 2, 2], 6))
