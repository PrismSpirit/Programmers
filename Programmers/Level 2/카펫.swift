//
//  카펫.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42842
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func divisor(_ n: Int) -> [Int] {
    var result: [Int] = []
    
    for i in 1...n {
        if (n % i == 0) {
            result.append(i)
        }
    }
    
    return result
}

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let divisorList = divisor(yellow)
    let numOfDivisor = divisorList.count
    
    for i in 0..<numOfDivisor / 2 {
        if (divisorList[i] + divisorList[(numOfDivisor - 1) - i]) * 2 + 4 == brown {
            return [divisorList[(numOfDivisor - 1) - i] + 2, divisorList[i] + 2]
        }
    }
    
    return [divisorList[(numOfDivisor / 2)] + 2, divisorList[(numOfDivisor / 2)] + 2]
}


print(solution(10, 2))
print(solution(8, 1))
print(solution(24, 24))
