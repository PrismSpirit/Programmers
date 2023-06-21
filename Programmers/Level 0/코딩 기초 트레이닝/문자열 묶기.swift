//
//  문자열 묶기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181855
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ strArr: [String]) -> Int {
    var countDict: Dictionary<Int, Int> = [:]
    
    for str in strArr {
        if countDict[str.count] != nil {
            countDict[str.count]! += 1
        } else {
            countDict[str.count] = 1
        }
    }
    
    return countDict.sorted { $0.value < $1.value }.last!.value
}


print(solution(["a","bc","d","efg","hi"]))
