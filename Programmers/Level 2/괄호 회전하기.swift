//
//  괄호 회전하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/76502
//
//  Created by Jaehun Lee on 2022/09/17.
//

import Foundation

func isValidBracket(_ s: String) -> Bool {
    var stack: [String] = []
    
    for c in s {
        let c = String(c)
        
        if stack.isEmpty {
            stack.append(c)
        } else {
            let lastOfStack = stack.last!
            
            if (lastOfStack == "[" && c == "]") || (lastOfStack == "{" && c == "}") || (lastOfStack == "(" && c == ")") {
                stack.removeLast()
            } else {
                stack.append(c)
            }
        }
    }
    
    return stack.isEmpty
}

func solution(_ s: String) -> Int {
    var s = s
    
    var result = 0
    
    for _ in 0..<s.count {
        if isValidBracket(s) {
            result += 1
        }
        
        let firstElement = String(s.removeFirst())
        s = s + firstElement
    }
    
    return result
}


print(solution("[](){}"))
print(solution("}]()[{"))
print(solution("[)(]"))
print(solution("}}}"))
