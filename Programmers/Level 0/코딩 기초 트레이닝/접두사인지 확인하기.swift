//
//  접두사인지 확인하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181906
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String, _ is_prefix: String) -> Int {
    if my_string.count < is_prefix.count {
        return 0
    }
    
    let fromIdx = my_string.index(my_string.startIndex, offsetBy: 0)
    let toIdx = my_string.index(my_string.startIndex, offsetBy: is_prefix.count)
    
    return my_string[fromIdx..<toIdx] == is_prefix ? 1 : 0
}


print(solution("banana", "ban"))
print(solution("banana", "nan"))
print(solution("banana", "abcd"))
print(solution("banana", "bananan"))
