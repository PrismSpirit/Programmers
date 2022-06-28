//
//  숫자 문자열과 영단어.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/81301
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String) -> Int {
    let numberString = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var result = s
    
    for i in 0..<numberString.count {
        result = result.replacingOccurrences(of: numberString[i], with: String(i))
    }
    
    return Int(result)!
}


print(solution("one4seveneight"))
print(solution("23four5six7"))
print(solution("2three45sixseven"))
print(solution("123"))
