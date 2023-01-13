//
//  문자열 밀기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120921
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ A: String, _ B: String) -> Int {
    var A = A
    
    for i in 0..<A.count {
        if A == B {
            return i
        }
        
        A.insert(A.removeLast(), at: A.startIndex)
    }
    
    return -1
}


print(solution("hello", "ohell"))
print(solution("apple", "elppa"))
print(solution("atat", "tata"))
print(solution("abc", "abc"))
