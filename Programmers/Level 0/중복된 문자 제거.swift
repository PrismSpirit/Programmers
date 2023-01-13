//
//  중복된 문자 제거.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120888
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ my_string: String) -> String {
    var resultStr = ""
    var charDict: Dictionary<String, Int> = [:]
    
    for c in my_string {
        if charDict[String(c)] == nil {
            charDict[String(c)] = 1
            resultStr += String(c)
        }
    }
    
    return resultStr
}


print(solution("people"))
print(solution("We are the world"))
