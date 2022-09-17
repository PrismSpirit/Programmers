//
//  k진수에서 소수 개수 구하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/92335
//
//  Created by Jaehun Lee on 2022/09/17.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    
    for i in 2..<Int(sqrt(Double(n))) + 1 {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

func solution(_ n: Int, _ k: Int) -> Int {
    var result = 0
    
    for i in String(n, radix: k).split(separator: "0", omittingEmptySubsequences: true) {
        if isPrime(Int(i)!) {
            result += 1
        }
    }
    
    return result
}


print(solution(437674, 3))
print(solution(110011, 10))
