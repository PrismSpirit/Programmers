//
//  주사위 게임 3.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181916
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
    var diceDict: Dictionary<Int, Int> = [:]
    let diceArr = [a, b, c, d]
    
    for dice in diceArr {
        if diceDict[dice] != nil {
            diceDict[dice]! += 1
        } else {
            diceDict[dice] = 1
        }
    }
    
    if diceDict.count == 1 {
        return 1111 * diceDict.keys.first!
    } else if diceDict.count == 2 {
        let filteredDict = diceDict.filter { $0.value == 2 }
        
        if filteredDict.isEmpty {
            let p = diceDict.filter { $0.value == 3 }.keys.first!
            let q = diceDict.filter { $0.value == 1 }.keys.first!
            
            return (10 * p + q) * (10 * p + q)
        } else {
            let p = Array(filteredDict.keys)[0]
            let q = Array(filteredDict.keys)[1]

            return (p + q) * abs(p - q)
        }
    } else if diceDict.count == 3 {
        let q = Array(diceDict.filter { $0.value == 1 }.keys)[0]
        let r = Array(diceDict.filter { $0.value == 1 }.keys)[1]
        
        return q * r
    } else {
        return diceDict.sorted { $0.key < $1.key }[0].key
    }
}


print(solution(2, 2, 2, 2))
print(solution(4, 1, 4, 4))
print(solution(6, 3, 3, 6))
print(solution(2, 5, 2, 6))
print(solution(6, 4, 2, 5))
