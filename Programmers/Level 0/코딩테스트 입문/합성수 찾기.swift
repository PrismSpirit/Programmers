//
//  합성수 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120846
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(n))) + 1 {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

func solution(_ n: Int) -> Int {
    return Array(1...n).filter { !isPrime($0) }.count
}


print(solution(10))
print(solution(15))
