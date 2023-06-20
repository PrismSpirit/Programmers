//
//  외계행성의 나이.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120834
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ age: Int) -> String {
    var result = ""
    let asciiValueOfA = Int(Character("a").asciiValue!)
    
    for c in String(age) {
        result += String(Character(UnicodeScalar(asciiValueOfA + Int(String(c))!)!))
    }
    
    return result
}


print(solution(23))
print(solution(51))
print(solution(100))
