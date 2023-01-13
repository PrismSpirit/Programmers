//
//  유한소수 판별하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120878
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func solution(_ a: Int, _ b: Int) -> Int {
    var denominator = b / gcd(a, b)
    
    while denominator % 2 == 0 {
        denominator /= 2
    }
    
    while denominator % 5 == 0 {
        denominator /= 5
    }
    
    return denominator != 1 ? 2 : 1
}


print(solution(7, 20))
print(solution(11, 22))
print(solution(12, 21))
