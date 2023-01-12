//
//  문자열 나누기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/140108
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ s: String) -> Int {
    var result = 0
    
    var x = ""
    var isTimeForSetX = true
    
    var numOfX = 0
    var numOfNonX = 0
    
    for i in 0..<s.count {
        let c = String(s[s.index(s.startIndex, offsetBy: i)])
        
        if isTimeForSetX {
            x = c
            numOfX += 1
            isTimeForSetX.toggle()
        } else {
            if x == c {
                numOfX += 1
            } else {
                numOfNonX += 1
            }
            
            if numOfX == numOfNonX {
                result += 1
                numOfX = 0
                numOfNonX = 0
                isTimeForSetX.toggle()
            }
        }
    }
    
    if !isTimeForSetX {
        result += 1
    }
    
    return result
}


print(solution("banana"))
print(solution("abracadabra"))
print(solution("aaabbaccccabba"))
