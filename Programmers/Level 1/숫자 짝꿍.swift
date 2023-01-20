//
//  숫자 짝꿍.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/131128
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ X: String, _ Y: String) -> String {
    var result = ""
    var xDict: Dictionary<String, Int> = [:]
    var yDict: Dictionary<String, Int> = [:]
    
    for c in X {
        if xDict[String(c)] != nil {
            xDict[String(c)]! += 1
        } else {
            xDict[String(c)] = 1
        }
    }
    
    for c in Y {
        if yDict[String(c)] != nil {
            yDict[String(c)]! += 1
        } else {
            yDict[String(c)] = 1
        }
    }
    
    for x in xDict.sorted(by: { $0.key > $1.key }) {
        if yDict[x.key] != nil {
            let count = x.value < yDict[x.key]! ? x.value : yDict[x.key]!
            
            result += String(repeating: x.key, count: count)
        }
    }
    
    return result == "" ? "-1" : result.first! == "0" ? "0" : result
}


print(solution("100", "2345"))
print(solution("100", "203045"))
print(solution("100", "123450"))
print(solution("12321", "42531"))
print(solution("5525", "1255"))
