//
//  귤 고르기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/138476
//
//  Created by Jaehun Lee on 2023/06/15.
//

import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    let n = tangerine.count
    var tangerineDict: Dictionary<Int, Int> = [:]
    var removeCount = 0
    var result = 0
    
    for t in tangerine {
        if tangerineDict[t] != nil {
            tangerineDict[t]! += 1
        } else {
            tangerineDict[t] = 1
        }
    }
    
    let sortedTangerineDict = tangerineDict.sorted { $0.value < $1.value }
    
    for i in 0..<sortedTangerineDict.count {
        removeCount += sortedTangerineDict[i].value
        
        if removeCount == n - k {
            result = sortedTangerineDict.count - (i + 1)
            break
        }
        else if removeCount > n - k {
            result = sortedTangerineDict.count - i
            break
        }
    }
    
    return result
}


print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))
print(solution(4, [1, 3, 2, 5, 4, 5, 2, 3]))
print(solution(2, [1, 1, 1, 1, 2, 2, 2, 3]))
