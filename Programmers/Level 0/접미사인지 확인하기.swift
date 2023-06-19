//
//  접미사인지 확인하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181908
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String, _ is_suffix: String) -> Int {
    if my_string.count < is_suffix.count {
        return 0
    }
    
    let startIdx = my_string.index(my_string.startIndex, offsetBy: my_string.count - is_suffix.count)
    
    return String(my_string[startIdx...]) == is_suffix ? 1 : 0
}


print(solution("banana", "ana"))
print(solution("banana", "nan"))
print(solution("banana", "wxyz"))
print(solution("banana", "abanana"))
