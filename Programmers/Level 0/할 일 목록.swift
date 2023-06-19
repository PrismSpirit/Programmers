//
//  할 일 목록.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181885
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ todo_list: [String], _ finished: [Bool]) -> [String] {
    var result: [String] = []
    
    for i in 0..<finished.count {
        if finished[i] == false {
            result.append(todo_list[i])
        }
    }
    
    return result
}


print(solution(["problemsolving", "practiceguitar", "swim", "studygraph"], [true, false, true, false]))
