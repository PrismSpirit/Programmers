//
//  JadenCase 문자열 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12951
//
//  Created by Jaehun Lee on 2022/09/15.
//

import Foundation

func solution(_ s: String) -> String {
    var result = ""
    var shouldBeUppercased = true
    
    for c in s {
        var stringC = String(c)
        
        if stringC != " " {
            if c.isNumber {
                shouldBeUppercased = false
            } else if c.isLetter {
                if shouldBeUppercased {
                    stringC = stringC.uppercased()
                    shouldBeUppercased = false
                } else {
                    stringC = stringC.lowercased()
                }
            }
        } else {
            shouldBeUppercased = true
        }
        
        result += stringC
    }
    
    return result
}


print(solution("3people unFollowed me"))
print(solution("for the last week"))
