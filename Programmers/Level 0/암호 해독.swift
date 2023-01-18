//
//  암호 해독.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120892
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ cipher: String, _ code: Int) -> String {
    var result = ""
    
    for i in 1...cipher.count {
        if i % code == 0 {
            result += String(cipher[cipher.index(cipher.startIndex, offsetBy: i - 1)])
        }
    }
    
    return result
}


print(solution("dfjardstddetckdaccccdegk", 4))
print(solution("pfqallllabwaoclk", 2))
