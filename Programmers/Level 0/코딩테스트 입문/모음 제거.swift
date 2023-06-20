//
//  모음 제거.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120849
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func isVowel(_ c: Character) -> Bool {
    if c == "a" || c == "e" || c == "i" || c == "o" || c == "u" {
        return true
    } else {
        return false
    }
}

func solution(_ my_string: String) -> String {
    return my_string.filter { !isVowel($0) }
}


print(solution("bus"))
print(solution("nice to meet you"))
