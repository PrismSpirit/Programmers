//
//  문자 반복 출력하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120825
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    return my_string.map { String(repeating: $0, count: n) }.joined()
}


print(solution("hello", 3))
