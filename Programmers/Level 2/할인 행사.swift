//
//  할인 행사.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/131127
//
//  Created by Jaehun Lee on 2022/10/11.
//

import Foundation

func solution(_ want: [String], _ number: [Int], _ discount: [String]) -> Int {
    var wantDict: Dictionary<String, Int> = [:]
    var discountDict: Dictionary<String, Int> = [:]
    let days = number.reduce(0, +)
    
    var result = 0
    
    for i in 0..<want.count {
        wantDict[want[i]] = number[i]
    }
    
    for i in 0..<days {
        if discountDict[discount[i]] != nil {
            discountDict[discount[i]]! += 1
        } else {
            discountDict[discount[i]] = 1
        }
    }
    
    for i in 0..<discount.count - days + 1 {
        var discountDict: Dictionary<String, Int> = [:]
        
        for j in 0..<days {
            if discountDict[discount[i + j]] != nil {
                discountDict[discount[i + j]]! += 1
            } else {
                discountDict[discount[i + j]] = 1
            }
        }
        
        var flag = true
        for w in wantDict {
            if discountDict[w.key] == nil || w.value > discountDict[w.key]! {
                flag = false
                break
            }
        }
        
        if flag {
            result += 1
        }
    }
    
    return result
}


print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))
print(solution(["apple"], [10], ["banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana"]))
