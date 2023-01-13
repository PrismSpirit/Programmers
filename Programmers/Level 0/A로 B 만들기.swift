//
//  A로 B 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120886
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ before: String, _ after: String) -> Int {
    var beforeDict: Dictionary<String, Int> = [:]
    var afterDict = beforeDict
    
    for i in 0..<before.count {
        let beforeC = String(before[before.index(before.startIndex, offsetBy: i)])
        let afterC = String(after[after.index(after.startIndex, offsetBy: i)])
        
        if beforeDict[beforeC] != nil {
            beforeDict[beforeC]! += 1
        } else {
            beforeDict[beforeC] = 1
        }
        
        if afterDict[afterC] != nil {
            afterDict[afterC]! += 1
        } else {
            afterDict[afterC] = 1
        }
    }
    
    return beforeDict == afterDict ? 1 : 0
}


print(solution("olleh", "hello"))
print(solution("allpe", "apple"))
