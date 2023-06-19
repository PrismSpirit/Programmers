//
//  특정한 문자를 대문자로 바꾸기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181873
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String, _ alp: String) -> String {
    return my_string.map { String($0) == alp ? String($0).uppercased() : String($0) }.joined()
}


print(solution("programmers", "p"))
print(solution("lowercase", "x"))
