//
//  문자열 압축.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/60057
//
//  Created by Jaehun Lee on 2023/06/27.
//

import Foundation

func solution(_ s: String) -> Int {
    var result = s.count
    
    for i in 1...s.count {
        var strStack: [String] = []
        var countStack: [Int] = []
        var lenOfCompressedStr = 0
        
        for j in 0..<s.count / i {
            let subStr = String(s[s.index(s.startIndex, offsetBy: j * i)..<s.index(s.startIndex, offsetBy: j * i + i)])
            
            if strStack.isEmpty {
                strStack.append(subStr)
                countStack.append(1)
            } else {
                if strStack.last! == subStr {
                    countStack.append(countStack.removeLast() + 1)
                } else {
                    strStack.append(subStr)
                    countStack.append(1)
                }
            }
        }
        
        let remnant = String(s[s.index(s.startIndex, offsetBy: s.count / i * i)...])
        
        if remnant.count != 0 {
            strStack.append(remnant)
            countStack.append(1)
        }
        
        for j in 0..<countStack.count {
            if countStack[j] == 1 {
                lenOfCompressedStr += strStack[j].count
            } else {
                lenOfCompressedStr += String(countStack[j]).count + strStack[j].count
            }
        }
        
        if result > lenOfCompressedStr {
            result = lenOfCompressedStr
        }
    }
    
    return result
}


print(solution("aabbaccc"))
print(solution("ababcdcdababcdcd"))
print(solution("abcabcdede"))
print(solution("abcabcabcabcdededededede"))
print(solution("xababcdcdababcdcd"))
