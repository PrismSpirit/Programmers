//
//  가장 큰 수.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42746
//
//  Created by Jaehun Lee on 2022/09/05.
//

import Foundation

func solution(_ numbers: [Int]) -> String {
    var isAllZero = true
    
    for number in numbers {
        if number != 0 {
            isAllZero = false
            break
        }
    }
    
    if isAllZero {
        return "0"
    }
    
    var numStrArr: [String] = []
    
    numStrArr = numbers.map { String($0) }
    
    return numStrArr.sorted { $0 + $1 > $1 + $0 }.joined()
}


print(solution([6, 10, 2]))
print(solution([3, 30, 34, 5, 9]))
