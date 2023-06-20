//
//  자릿수 더하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120906
//
//  Created by Jaehun Lee on 2023/01/16.
//

import Foundation

func solution(_ n: Int) -> Int {
    return String(n).map{ Int(String($0))! }.reduce(0, +)
}


print(solution(1234))
print(solution(930211))
