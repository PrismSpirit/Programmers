//
//  수 조작하기 2.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181925
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ numLog: [Int]) -> String {
    var result = ""
    
    for i in 0..<numLog.count - 1 {
        let d = numLog[i + 1] - numLog[i]
        
        switch d {
        case 1:
            result += "w"
        case -1:
            result += "s"
        case 10:
            result += "d"
        case -10:
            result += "a"
        default:
            break
        }
    }
    
    return result
}


print(solution([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]))
