//
//  크기가 작은 부분문자열.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/147355
//
//  Created by Jaehun Lee on 2023/01/12.
//

import Foundation

func solution(_ t: String, _ p: String) -> Int {
    var result = 0
    
    for i in 0..<t.count - p.count + 1 {
        if Int(String(t[t.index(t.startIndex, offsetBy: i)..<t.index(t.startIndex, offsetBy: (i + p.count))]))! <= Int(p)! {
            result += 1
        }
    }
    
    return result
}


print(solution("3141592", "271"))
print(solution("500220839878", "7"))
print(solution("10203", "15"))
