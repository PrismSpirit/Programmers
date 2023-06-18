//
//  rny_string.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181863
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ rny_string: String) -> String {
    var resultStr = ""
    
    for c in rny_string {
        if String(c) == "m" {
            resultStr += "rn"
        } else {
            resultStr += String(c)
        }
    }
    
    return resultStr
}


print(solution("masterpiece"))
print(solution("programmers"))
print(solution("jerry"))
print(solution("burn"))
