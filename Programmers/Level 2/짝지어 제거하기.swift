//
//  짝지어 제거하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12973
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ s: String) -> Int{
    var stk: [Character] = []
    
    for c in s {
        let lastElement = stk.last
        stk.append(c)
        if lastElement != nil && lastElement == c {
            stk.popLast()
            stk.popLast()
        }
    }
    
    return stk.isEmpty ? 1 : 0
}


print(solution("baabaa"))
print(solution("cdcd"))
