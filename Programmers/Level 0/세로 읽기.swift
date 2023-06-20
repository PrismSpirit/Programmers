//
//  세로 읽기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181904
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String, _ m: Int, _ c: Int) -> String {
    var result = ""
    
    for i in 0..<my_string.count / m {
        let idx = my_string.index(my_string.startIndex, offsetBy: (m * i) + c - 1)
        
        result += String(my_string[idx])
    }
    
    return result
}


print(solution("ihrhbakrfpndopljhygc", 4, 2))
print(solution("programmers", 1, 1))
