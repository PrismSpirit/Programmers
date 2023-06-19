//
//  문자열 섞기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181942
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ str1: String, _ str2: String) -> String {
    var result = ""
    
    for i in 0..<str1.count {
        result += String(str1[str1.index(str1.startIndex, offsetBy: i)])
        result += String(str2[str2.index(str2.startIndex, offsetBy: i)])
    }
    
    return result
}


print(solution("aaaaa", "bbbbb"))
