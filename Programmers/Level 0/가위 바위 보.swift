//
//  가위 바위 보.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120839
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ rsp: String) -> String {
    var result = ""
    
    for c in rsp {
        if String(c) == "0" {
            result += "5"
        } else if String(c) == "2" {
            result += "0"
        } else {
            result += "2"
        }
    }
    
    return result
}


print(solution("2"))
print(solution("205"))
