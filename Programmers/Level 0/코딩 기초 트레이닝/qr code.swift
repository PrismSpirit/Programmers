//
//  qr code.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181903
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ q: Int, _ r: Int, _ code: String) -> String {
    var result = ""
    
    for i in 0..<code.count {
        if i % q == r {
            result += String(code[code.index(code.startIndex, offsetBy: i)])
        }
    }
    
    return result
}


print(solution(3, 1, "qjnwezgrpirldywt"))
print(solution(1, 0, "programmers"))
