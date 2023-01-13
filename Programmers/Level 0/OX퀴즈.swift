//
//  OX퀴즈.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120907
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ quiz: [String]) -> [String] {
    var resultArr: [String] = []
    
    for q in quiz {
        let blankRemoved = q.split(separator: " ")
        var leftCalc = 0
        
        leftCalc = blankRemoved[1] == "+" ? Int(blankRemoved[0])! + Int(blankRemoved[2])! : Int(blankRemoved[0])! - Int(blankRemoved[2])!
        leftCalc == Int(blankRemoved[4])! ? resultArr.append("O") : resultArr.append("X")
    }
    
    return resultArr
}


print(solution(["3 - 4 = -3", "5 + 6 = 11"]))
print(solution(["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"]))
