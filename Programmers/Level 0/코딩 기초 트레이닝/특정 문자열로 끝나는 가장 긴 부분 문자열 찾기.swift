//
//  특정 문자열로 끝나는 가장 긴 부분 문자열 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181872
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ myString: String, _ pat: String) -> String {
    var idx = 0
    
    for i in 0..<myString.count + 1 - pat.count {
        let fromIdx = myString.index(myString.startIndex, offsetBy: i)
        let toIdx = myString.index(myString.startIndex, offsetBy: i + pat.count)
        
        if myString[fromIdx..<toIdx] == pat {
            idx = i + pat.count
        }
    }
    
    return String(myString[..<myString.index(myString.startIndex, offsetBy: idx)])
}


print(solution("AbCdEFG", "dE"))
print(solution("AAAAaaaa", "a"))
