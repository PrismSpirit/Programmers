//
//  세 개의 구분자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181862
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ myStr: String) -> [String] {
    var result: [String] = []
    var buf = ""
    
    for c in myStr {
        let c = String(c)
        
        if c == "a" || c == "b" || c == "c" {
            if !buf.isEmpty {
                result.append(buf)
                buf = ""
            }
        } else {
            buf += c
        }
    }
    
    if !buf.isEmpty {
        result.append(buf)
    }
    
    return result.isEmpty ? ["EMPTY"] : result
}


print(solution("baconlettucetomato"))
print(solution("abcd"))
print(solution("cabab"))
