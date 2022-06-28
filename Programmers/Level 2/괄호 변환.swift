//
//  괄호 변환.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/60058
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func divideString(_ p: String) -> (String, String, Bool) {
    var result: [Character] = []
    var idx = 0
    var isValid: Bool = true
    
    for i in 0..<p.count {
        let lastElement = result.last
        result.append(p[p.index(p.startIndex, offsetBy: i)])
        if i != 0 && ((lastElement == "(" && p[p.index(p.startIndex, offsetBy: i)] == ")")) {
            _ = result.popLast()
            _ = result.popLast()
        } else if (i != 0 && (lastElement == ")" && p[p.index(p.startIndex, offsetBy: i)] == "(")) {
            _ = result.popLast()
            _ = result.popLast()
            isValid = false
        }
        if i > 0 && result.isEmpty {
            idx = i
            break
        }
    }
    
    return (String(p[...p.index(p.startIndex, offsetBy: idx)]), String(p[p.index(p.startIndex, offsetBy: idx + 1)...]), isValid)
}

func algorithm(_ p: String) -> String {
    if p.isEmpty {
        return ""
    }
    
    let divided = divideString(p)
    var u = divided.0
    let v = divided.1
    let isValid = divided.2
    
    if isValid {
        return u + algorithm(v)
    } else {
        var convertedU = ""
        _ = u.removeLast()
        _ = u.removeFirst()
        for uu in u {
            if uu == "(" {
                convertedU += ")"
            } else {
                convertedU += "("
            }
        }
        
        return "(" + algorithm(v) + ")" + convertedU
    }
}

func solution(_ p: String) -> String {
    return algorithm(p)
}


print(solution("(()())()"))
print(solution(")("))
print(solution("()))((()"))
