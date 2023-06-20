//
//  팩토리얼.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120848
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func factorial(_ n: Int) -> Int {
    return n == 1 ? 1 : n * factorial(n - 1)
}

func solution(_ n: Int) -> Int {
    for i in stride(from: 10, to: 0, by: -1) {
        if factorial(i) <= n {
            return i
        }
    }
    
    return 0
}


print(solution(3628800))
print(solution(7))
print(solution(1))
