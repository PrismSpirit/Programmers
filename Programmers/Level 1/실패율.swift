//
//  실패율.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42889
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ N: Int, _ stages: [Int]) -> [Int] {
    var result: [Int] = []
    var justReached: [Int] = Array(repeating: 0, count: N)
    var cleared: [Int] = Array(repeating: 0, count: N)
    var dictionary: Dictionary<Int, Double> = [:]
    
    for stage in stages {
        for i in 0..<stage {
            if (i < (stage - 1)) {
                cleared[i] += 1
            }
            else {
                if stage <= N {
                    justReached[i] += 1
                }
            }
        }
    }
    
    for i in 0..<N {
        if cleared[i] == 0 && justReached[i] == 0 {
            dictionary[i + 1] = 0
        } else {
            dictionary[i + 1] = Double(justReached[i]) / Double(cleared[i] + justReached[i])
        }
    }

    let sortedDictionary = dictionary.sorted {
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        } else {
            return $0.1 > $1.1
        }
    }
    
    for s in sortedDictionary {
        result.append(s.key)
    }
    
    return result
}


print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
print(solution(4, [4,4,4,4,4]))
