//
//  한 번만 등장한 문자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120896
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ s: String) -> String {
    var alphabetDict: Dictionary<String, Int> = [:]
    
    for c in s {
        if alphabetDict[String(c)] != nil {
            alphabetDict[String(c)]! += 1
        } else {
            alphabetDict[String(c)] = 1
        }
    }
    
    return alphabetDict.filter { $0.value == 1 }.map { $0.key }.sorted().joined()
}


print(solution("abcabcadc"))
print(solution("abdc"))
print(solution("hello"))
