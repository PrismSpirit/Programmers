//
//  튜플.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/64065
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ s: String) -> [Int] {
    var freq: Dictionary<Int, Int> = [:]
    var result: [Int] = []
    
    var tmp = 0
    
    for c in s {
        if c == "{" || c == "}" || c == "," {
            if tmp != 0 {
                if freq[tmp] != nil {
                    freq[tmp]! += 1
                } else {
                    freq[tmp] = 1
                }
                tmp = 0
            }
        } else {
            tmp *= 10
            tmp += Int(String(c))!
        }
    }
    
    let sortedDict = freq.sorted {
        $0.value > $1.value
    }
    
    for x in sortedDict {
        result.append(x.key)
    }
    
    return result
}


print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))
print(solution("{{1,2,3},{2,1},{1,2,4,3},{2}}"))
print(solution("{{20,111},{111}}"))
print(solution("{{123}}"))
print(solution("{{4,2,3},{3},{2,3,4,1},{2,3}}"))
