//
//  문자열 뒤집기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181905
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
    let a = String(my_string[..<my_string.index(my_string.startIndex, offsetBy: s)])
    let c = String(my_string[my_string.index(my_string.startIndex, offsetBy: e + 1)...])
    let b = String(my_string[my_string.index(my_string.startIndex, offsetBy: s)..<my_string.index(my_string.startIndex, offsetBy: e + 1)]).reversed()
    
    return a + b + c
}


print(solution("Progra21Sremm3", 6, 12))
print(solution("Stanley1yelnatS", 4, 10))
