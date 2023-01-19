//
//  피자 나눠 먹기 (2).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120815
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n: Int) -> Int {
    return lcm(n, 6) / 6
}


print(solution(6))
print(solution(10))
print(solution(4))
