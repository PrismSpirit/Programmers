//
//  ad 제거하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181870
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ strArr: [String]) -> [String] {
    var result: [String] = []
    
    for str in strArr {
        if !str.contains("ad") {
            result.append(str)
        }
    }
    
    return result
}


print(solution(["and","notad","abcd"]))
print(solution(["there","are","no","a","ds"]))
