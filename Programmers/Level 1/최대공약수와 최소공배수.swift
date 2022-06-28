//
//  최대공약수와 최소공배수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12940
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n: Int, _ m: Int) -> [Int] {
    var result: [Int] = []
    
    result.append(gcd(n, m))
    result.append(lcm(n, m))
    
    return result
}


print(solution(3, 12))
print(solution(2, 5))
