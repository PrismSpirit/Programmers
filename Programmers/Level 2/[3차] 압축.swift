//
//  [3차] 압축.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17684
//
//  Created by Jaehun Lee on 2022/09/24.
//

import Foundation

func solution(_ msg: String) -> [Int] {
    var result: [Int] = []

    var msgStack = msg.map { String($0) }
    var dict: Dictionary<String, Int> = [:]
    
    for i in 1...26 {
        dict[String(Character(UnicodeScalar(i + 64)!))] = i
    }
    
    var nextIdx = 27
    
    while msgStack.count > 0 {
        var startIdx = 0
        var endIdx = 0
        
        while endIdx < msgStack.count && dict[msgStack[startIdx...endIdx].joined()] != nil {
            endIdx += 1
        }
        
        var w = msgStack[startIdx..<endIdx].joined()
        
        result.append(dict[w]!)
        msgStack = Array(msgStack[endIdx...])
        
        if !msgStack.isEmpty {
            dict[w + msgStack[0]] = nextIdx
            nextIdx += 1
        }
    }
    
    return result
}


print(solution("KAKAO"))
print(solution("TOBEORNOTTOBEORTOBEORNOT"))
print(solution("ABABABABABABABAB"))
