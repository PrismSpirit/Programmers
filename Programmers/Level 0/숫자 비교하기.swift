//
//  숫자 비교하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120807
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    return num1 == num2 ? 1 : -1
}


print(solution(2, 3))
print(solution(11, 11))
print(solution(7, 99))
