//
//  등차수열의 특정한 항만 더하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181931
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ a: Int, _ d: Int, _ included: [Bool]) -> Int {
    var result = 0
    
    for i in 0..<included.count {
        if included[i] {
            result += (a + i * d)
        }
    }
    
    return result
}


print(solution(3, 4, [true, false, false, true, true]))
print(solution(7, 1, [false, false, false, true, false, false, false]))
