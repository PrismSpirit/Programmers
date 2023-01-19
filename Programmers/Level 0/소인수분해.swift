//
//  소인수분해.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120852
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    var factorSet: Set<Int> = []
    var n = n
    var i = 2
    
    while n > 1 {
        while n % i == 0 {
            n /= i
            factorSet.insert(i)
        }
        i += 1
    }
    
    return Array(factorSet).sorted()
}


print(solution(12))
print(solution(17))
print(solution(420))
