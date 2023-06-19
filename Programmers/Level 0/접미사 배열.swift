//
//  접미사 배열.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181909
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String) -> [String] {
    var result: [String] = []
    
    for i in 0..<my_string.count {
        let fromIdx = my_string.index(my_string.startIndex, offsetBy: i)
        
        result.append(String(my_string[fromIdx...]))
    }
    
    return result.sorted()
}


print(solution("banana"))
print(solution("programmers"))
