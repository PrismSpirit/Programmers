//
//  배열 만들기 5.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181912
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ intStrs: [String], _ k: Int, _ s: Int, _ l: Int) -> [Int] {
    var result: [Int] = []
    
    for intStr in intStrs {
        let fromIdx = intStr.index(intStr.startIndex, offsetBy: s)
        let toIdx = intStr.index(intStr.startIndex, offsetBy: s + l)
        
        let num = Int(intStr[fromIdx..<toIdx])!
        
        if num > k {
            result.append(num)
        }
    }
    
    return result
}


print(solution(["0123456789","9876543210","9999999999999"], 50000, 5, 5))
