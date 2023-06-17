//
//  롤케이크 자르기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/132265
//
//  Created by Jaehun Lee on 2023/06/17.
//

import Foundation

func solution(_ topping: [Int]) -> Int {
    let n = topping.count
    var big: Dictionary<Int, Int> = [:]
    var little: Dictionary<Int, Int> = [:]
    var result = 0
    
    for t in topping {
        if little[t] != nil {
            little[t]! += 1
        } else {
            little[t] = 1
        }
    }
    
    for i in 0..<n - 1 {
        if big[topping[i]] != nil {
            big[topping[i]]! += 1
        } else {
            big[topping[i]] = 1
        }
        
        if little[topping[i]] != 1 {
            little[topping[i]]! -= 1
        } else {
            little.removeValue(forKey: topping[i])
        }
        
        if big.count == little.count {
            result += 1
        }
    }
    
    return result
}


print(solution([1, 2, 1, 3, 1, 4, 1, 2]))
print(solution([1, 2, 3, 1, 4]))
