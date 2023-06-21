//
//  홀짝에 따라 다른 값 반환하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181935
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ n: Int) -> Int {
    if n % 2 != 0 {
        return Array(1...n).filter { $0 % 2 != 0 }.reduce(0, +)
    } else {
        return Array(1...n).filter { $0 % 2 == 0 }.map { $0 * $0 }.reduce(0, +)
    }
}


print(solution(7))
print(solution(10))
