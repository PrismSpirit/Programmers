//
//  문자열 정렬하기 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120850
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ my_string: String) -> [Int] {
    return my_string.filter { $0.isNumber }.map { Int(String($0))! }.sorted()
}


print(solution("hi12392"))
print(solution("p2o4i8gj2"))
print(solution("abcde0"))
