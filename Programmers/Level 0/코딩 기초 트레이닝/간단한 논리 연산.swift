//
//  간단한 논리 연산.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181917
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ x1: Bool, _ x2: Bool, _ x3: Bool, _ x4: Bool) -> Bool {
    return (x1 || x2) && (x3 || x4)
}


print(solution(false, true, true, true))
print(solution(true, false, false, false))
