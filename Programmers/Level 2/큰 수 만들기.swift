//
//  큰 수 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42883
//
//  Created by Jaehun Lee on 2022/08/23.
//

import Foundation

func solution(_ number: String, _ k: Int) -> String {
    var numArr: [Int] = number.map { Int(String($0))! }
    var result: [Int] = [numArr.removeFirst()]
    var k = k
    
    for num in numArr {
        while !result.isEmpty && result.last! < num && k > 0 {
            result.removeLast()
            k -= 1
        }
        
        result.append(num)
    }
    
    if k > 0 {
        result = Array(result[..<(result.count - k)])
    }
    
    return result.map { String($0) }.joined()
}


print(solution("1924", 2))
print(solution("1231234", 3))
print(solution("4177252841", 4))
