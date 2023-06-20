//
//  대문자와 소문자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120893
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ my_string: String) -> String {
    return my_string.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }.joined()
}


print(solution("cccCCC"))
print(solution("abCdEfghIJ"))
