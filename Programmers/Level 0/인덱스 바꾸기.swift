//
//  인덱스 바꾸기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120895
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ my_string: String, _ num1: Int, _ num2: Int) -> String {
    var result = ""
    
    let charOfIdx1 = String(my_string[my_string.index(my_string.startIndex, offsetBy: num1)])
    let charOfIdx2 = String(my_string[my_string.index(my_string.startIndex, offsetBy: num2)])
    
    for i in 0..<my_string.count {
        if i == num1 {
            result += charOfIdx2
        } else if i == num2 {
            result += charOfIdx1
        } else {
            result += String(my_string[my_string.index(my_string.startIndex, offsetBy: i)])
        }
    }
    
    return result
}


print(solution("hello", 1, 2))
print(solution("I love you", 3, 6))
