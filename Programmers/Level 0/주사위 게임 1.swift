//
//  주사위 게임 1.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181839
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    if a % 2 != 0 && b % 2 != 0 {
        return (a * a) + (b * b)
    } else if a % 2 != 0 || b % 2 != 0 {
        return 2 * (a + b)
    } else {
        return abs(a - b)
    }
}


print(solution(3, 5))
print(solution(6, 1))
print(solution(2, 4))
