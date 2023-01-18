//
//  다항식 더하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120863
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ polynomial: String) -> String {
    var coefficient = 0
    var constant = 0
    
    for term in polynomial.split(separator: " ").filter({ $0 != "+" }) {
        if term == "x" {
            coefficient += 1
        } else if term.last! == "x" {
            coefficient += Int(String(term[..<term.index(term.startIndex, offsetBy: term.count - 1)]))!
        } else {
            constant += Int(term)!
        }
    }
    
    if constant == 0 {
        if coefficient == 0 {
            return ""
        }
        else if coefficient == 1 {
            return "x"
        } else {
            return "\(coefficient)x"
        }
    } else {
        if coefficient == 0 {
            return "\(constant)"
        }
        else if coefficient == 1 {
            return "x + \(constant)"
        } else {
            return "\(coefficient)x + \(constant)"
        }
    }
}


print(solution("3x + 7 + x"))
print(solution("x + x + x"))
