//
//  숫자 찾기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120904
//
//  Created by Jaehun Lee on 2023/01/17.
//

import Foundation

func solution(_ num: Int, _ k: Int) -> Int {
    let s = String(num)
    
    for i in 0..<s.count {
        if String(s[s.index(s.startIndex, offsetBy: i)]) == String(k) {
            return i + 1
        }
    }
    
    return -1
}


print(solution(29183, 1))
print(solution(232443, 4))
print(solution(123456, 7))
