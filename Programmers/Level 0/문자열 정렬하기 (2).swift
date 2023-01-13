//
//  문자열 정렬하기 (2).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120911
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ my_string: String) -> String {
    return String(my_string.lowercased().sorted())
}


print(solution("Bcad"))
print(solution("heLLo"))
print(solution("Python"))
