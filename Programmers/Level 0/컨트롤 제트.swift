//
//  컨트롤 제트.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120853
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ s: String) -> Int {
    var result = 0
    let blankRemovedS = s.split(separator: " ")
    
    
    for i in 0..<blankRemovedS.count {
        if blankRemovedS[i] == "Z" {
            result -= Int(blankRemovedS[i - 1])!
        } else {
            result += Int(blankRemovedS[i])!
        }
    }
    
    return result
}


print(solution("1 2 Z 3"))
print(solution("10 20 30 40"))
print(solution("10 Z 20 Z 1"))
print(solution("10 Z 20 Z"))
print(solution("-1 -2 -3 Z"))
