//
//  주사위 게임 2.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181930
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a != b && b != c && c != a {
        return a + b + c
    } else if a != b || b != c || b != a {
        return (a + b + c) * (a * a + b * b + c * c)
    } else {
        return (a + b + c) * (a * a + b * b + c * c) * (a * a * a + b * b * b + c * c * c)
    }
}


print(solution(2, 6, 1))
print(solution(5, 3, 3))
print(solution(4, 4, 4))
