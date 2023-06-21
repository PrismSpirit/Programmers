//
//  공백으로 구분하기 2.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181868
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ my_string: String) -> [String] {
    return my_string.split(separator: " ").map { String($0) }
}


print(solution(" i    love  you"))
print(solution("    programmers  "))
