//
//  k의 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120887
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ i: Int, _ j: Int, _ k: Int) -> Int {
    var result = 0
    
    for n in i...j {
        for c in String(n) {
            if String(c) == String(k) {
                result += 1
            }
        }
    }
    
    return result
}


print(solution(1, 13, 1))
print(solution(10, 50, 5))
print(solution(3, 10, 2))
