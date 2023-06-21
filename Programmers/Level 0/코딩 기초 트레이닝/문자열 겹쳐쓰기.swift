//
//  문자열 겹쳐쓰기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181943
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    let a = String(my_string[..<my_string.index(my_string.startIndex, offsetBy: s)])
    let c = String(my_string[my_string.index(my_string.startIndex, offsetBy: s + overwrite_string.count)...])
    
    return a + overwrite_string + c
}


print(solution("He11oWor1d", "lloWorl", 2))
print(solution("Program29b8UYP", "merS123", 7))
