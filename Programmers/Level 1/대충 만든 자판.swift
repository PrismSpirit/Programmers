//
//  대충 만든 자판.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/160586
//
//  Created by Jaehun Lee on 2023/06/13.
//

import Foundation

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var keyDict: Dictionary<String, Int> = [:]
    var resultArr: [Int] = []
    
    for map in keymap {
        for i in 0..<map.count {
            let alphabet = String(map[map.index(map.startIndex, offsetBy: i)])
            
            if keyDict[alphabet] != nil && keyDict[alphabet]! < i + 1 {
                continue
            }
            
            keyDict[alphabet] = i + 1
        }
    }
    
    for target in targets {
        var result = 0
        
        for alphabet in target {
            let alphabet = String(alphabet)
            
            if keyDict[alphabet] != nil {
                result += keyDict[alphabet]!
            } else {
                result = -1
                break
            }
        }
        
        resultArr.append(result)
    }
    
    return resultArr
}


print(solution(["ABACD", "BCEFD"], ["ABCD","AABB"]))
print(solution(["AA"], ["B"]))
print(solution(["AGZ", "BSSS"], ["ASA","BGZ"]))
