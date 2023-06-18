//
//  부분 문자열인지 확인하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181843
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ my_string: String, _ target: String) -> Int {
    if target.count > my_string.count {
        return 0
    } else {
        for i in 0..<my_string.count + 1 - target.count {
            let fromIdx = my_string.index(my_string.startIndex, offsetBy: i)
            let toIdx = my_string.index(my_string.startIndex, offsetBy: i + target.count)
            
            if my_string[fromIdx..<toIdx] == target {
                return 1
            }
        }
    }
    
    return 0
}


print(solution("banana", "ana"))
print(solution("banana", "wxyz"))
