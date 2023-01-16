//
//  배열의 유사도.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120903
//
//  Created by Jaehun Lee on 2023/01/17.
//

import Foundation

func solution(_ s1: [String], _ s2: [String]) -> Int {
    var result = 0
    
    for element in s1 {
        if s2.contains(element) {
            result += 1
        }
    }
    
    return result
}


print(solution(["a", "b", "c"], ["com", "b", "d", "p", "c"]))
print(solution(["n", "omg"], ["m", "dot"]))
