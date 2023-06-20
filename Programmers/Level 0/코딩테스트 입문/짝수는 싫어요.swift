//
//  짝수는 싫어요.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120813
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    return Array(1...n).filter { $0 % 2 != 0 }
}


print(solution(10))
print(solution(15))
