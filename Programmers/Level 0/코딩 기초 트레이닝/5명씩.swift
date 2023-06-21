//
//  5명씩.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181886
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ names: [String]) -> [String] {
    var result: [String] = []
    
    for i in 0..<names.count {
        if i % 5 == 0 {
            result.append(names[i])
        }
    }
    
    return result
}


print(solution(["nami", "ahri", "jayce", "garen", "ivern", "vex", "jinx"]))
