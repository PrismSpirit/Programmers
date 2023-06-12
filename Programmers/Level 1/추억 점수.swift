//
//  추억 점수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/176963
//
//  Created by Jaehun Lee on 2023/06/13.
//

import Foundation

func solution(_ name: [String], _ yearning: [Int], _ photo: [[String]]) -> [Int] {
    var result: [Int] = []
    var yearningDict: Dictionary<String, Int> = [:]
    
    for i in 0..<name.count {
        yearningDict[name[i]] = yearning[i]
    }
    
    for pic in photo {
        result.append(pic.map { yearningDict[$0] != nil ? yearningDict[$0]! : 0 }.reduce(0, +))
    }
    
    return result
}


print(solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]))
print(solution(["kali", "mari", "don"], [11, 1, 55], [["kali", "mari", "don"], ["pony", "tom", "teddy"], ["con", "mona", "don"]]))
print(solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may"],["kein", "deny", "may"], ["kon", "coni"]]))
