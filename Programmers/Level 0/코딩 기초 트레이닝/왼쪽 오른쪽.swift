//
//  왼쪽 오른쪽.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181890
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ str_list: [String]) -> [String] {
    for i in 0..<str_list.count {
        if str_list[i] == "l" {
            return Array(str_list[..<i])
        } else if str_list[i] == "r" {
            return Array(str_list[(i + 1)...])
        }
    }
    
    return []
}


print(solution(["u", "u", "l", "r"]))
print(solution(["l"]))
