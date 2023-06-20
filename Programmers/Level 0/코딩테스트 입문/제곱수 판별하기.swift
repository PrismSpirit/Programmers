//
//  제곱수 판별하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120909
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ n: Int) -> Int {
    for i in 1...Int(sqrt(Double(n))) {
        if i * i == n {
            return 1
        }
    }
    
    return 2
}


print(solution(144))
print(solution(976))
