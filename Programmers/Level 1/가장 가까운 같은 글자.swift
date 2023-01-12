//
//  가장 가까운 같은 글자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/142086
//
//  Created by Jaehun Lee on 2023/01/12.
//

import Foundation

func solution(_ s: String) -> [Int] {
    var resultArr: [Int] = []
    var alphabetDict: Dictionary<String, Int> = [:]
    
    for i in 0..<s.count {
        let c = String(s[s.index(s.startIndex, offsetBy: i)])
        
        if alphabetDict[c] != nil {
            resultArr.append(i - alphabetDict[c]!)
        } else {
            resultArr.append(-1)
        }
        alphabetDict[c] = i
    }
    
    return resultArr
}


print(solution("banana"))
print(solution("foobar"))
