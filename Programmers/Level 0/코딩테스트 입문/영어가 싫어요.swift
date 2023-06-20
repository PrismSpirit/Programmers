//
//  영어가 싫어요.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120894
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func englishToNumber(_ eng: String) -> Int? {
    switch eng {
    case "zero":
        return 0
    case "one":
        return 1
    case "two":
        return 2
    case "three":
        return 3
    case "four":
        return 4
    case "five":
        return 5
    case "six":
        return 6
    case "seven":
        return 7
    case "eight":
        return 8
    case "nine":
        return 9
    default:
        return nil
    }
}

func solution(_ numbers: String) -> Int64 {
    var resultStr = ""
    
    var buffer = ""
    
    for c in numbers {
        buffer += String(c)
        
        if let n = englishToNumber(buffer) {
            resultStr += String(n)
            buffer = ""
        }
    }
    
    return Int64(resultStr)!
}


print(solution("onetwothreefourfivesixseveneightnine"))
print(solution("onefourzerosixseven"))
