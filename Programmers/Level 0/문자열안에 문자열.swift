//
//  문자열안에 문자열.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120908
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    return str1.contains(str2) ? 1 : 2
}


print(solution("ab6CDE443fgh22iJKlmn1o", "6CD"))
print(solution("ppprrrogrammers", "pppp"))
print(solution("AbcAbcA", "AAA"))
