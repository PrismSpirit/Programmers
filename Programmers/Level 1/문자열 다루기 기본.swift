//
//  문자열 다루기 기본.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12918
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String) -> Bool {
    if !(s.count == 4 || s.count == 6) {
        return false
    }
    
    if let _ = s.range(of: "^[\\d]*$", options: .regularExpression) {
        return true
    }
    
    return false
}


print(solution("a234"))
print(solution("1234"))
