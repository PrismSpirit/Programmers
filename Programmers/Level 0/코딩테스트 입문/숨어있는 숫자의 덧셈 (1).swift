//
//  숨어있는 숫자의 덧셈 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120851
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ my_string: String) -> Int {
    return my_string.filter { $0.isNumber }.map{ Int(String($0))! }.reduce(0, +)
}


print(solution("aAb1B2cC34oOp"))
print(solution("1a2b3c4d123"))
