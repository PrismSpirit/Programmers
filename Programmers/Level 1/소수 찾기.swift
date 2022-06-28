//
//  소수 찾기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12921
//
//  Created by Jaehun Lee on 2022/06/28.
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
    var count = 0
    
    for i in 2...n {
        if isPrime(i) {
            count += 1
        }
    }
    
    return count
}


print(solution(10))
print(solution(5))
