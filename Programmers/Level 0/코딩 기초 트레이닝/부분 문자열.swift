//
//  부분 문자열.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181842
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    for i in 0..<str2.count + 1 - str1.count {
        let fromIdx = str2.index(str2.startIndex, offsetBy: i)
        let toIdx = str2.index(str2.startIndex, offsetBy: i + str1.count)
        
        if String(str2[fromIdx..<toIdx]) == str1 {
            return 1
        }
    }
    
    return 0
}


print(solution("abc", "aabcc"))
print(solution("tbt", "tbbttb"))
