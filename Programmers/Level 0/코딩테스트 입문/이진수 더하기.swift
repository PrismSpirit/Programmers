//
//  이진수 더하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120885
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ bin1: String, _ bin2: String) -> String {
    return String((Int(bin1, radix: 2)! + Int(bin2, radix: 2)!), radix: 2)
}


print(solution("10", "11"))
print(solution("1001", "1111"))
