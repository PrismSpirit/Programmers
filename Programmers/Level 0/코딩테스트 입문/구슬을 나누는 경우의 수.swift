//
//  구슬을 나누는 경우의 수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120840
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ balls: Int, _ share: Int) -> Int {
    var result = 1
    
    for i in 1...share {
        result *= balls - i + 1
        result /= i
    }
    
    return result
}


print(solution(3, 2))
print(solution(5, 3))
