//
//  올바른 괄호.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12909
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ s: String) -> Bool {
    var stack: [String] = []
    
    for c in s {
        if stack.isEmpty {
            stack.append(String(c))
        } else {
            if String(c) == ")" && stack.last! == "(" {
                stack.removeLast()
            } else {
                stack.append(String(c))
            }
        }
    }
    
    return stack.isEmpty ? true : false
}


print(solution("()()"))
print(solution("(())()"))
print(solution(")()("))
print(solution("(()("))
