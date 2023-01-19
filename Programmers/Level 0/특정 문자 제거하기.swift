//
//  특정 문자 제거하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120826
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ my_string: String, _ letter: String) -> String {
    return my_string.filter { String($0) != letter }
}


print(solution("abcdef", "f"))
print(solution("BCBdbe", "B"))
