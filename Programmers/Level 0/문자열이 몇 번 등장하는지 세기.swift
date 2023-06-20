//
//  문자열이 몇 번 등장하는지 세기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181871
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var result = 0
    
    for i in 0..<myString.count + 1 - pat.count {
        let fromIdx = myString.index(myString.startIndex, offsetBy: i)
        let toIdx = myString.index(myString.startIndex, offsetBy: i + pat.count)
        
        if myString[fromIdx..<toIdx] == pat {
            result += 1
        }
    }
    
    return result
}


print(solution("banana", "ana"))
print(solution("aaaa", "aa"))
