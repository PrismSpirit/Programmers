//
//  개미 군단.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120837
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ hp: Int) -> Int {
    var hp = hp
    var result = 0
    
    while hp >= 5 {
        hp -= 5
        result += 1
    }
    
    while hp >= 3 {
        hp -= 3
        result += 1
    }
    
    while hp >= 1 {
        hp -= 1
        result += 1
    }
    
    return result
}


print(solution(23))
print(solution(24))
print(solution(999))
