//
//  문자 개수 세기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181902
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ my_string: String) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: 52)
    
    for c in my_string {
        if c.isUppercase {
            result[Int(c.asciiValue!) - 65] += 1
        } else {
            result[Int(c.asciiValue!) - 97 + 26] += 1
        }
    }
    
    return result
}


print(solution("Programmers"))
