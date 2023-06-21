//
//  글자 지우기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181900
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_string: String, _ indices: [Int]) -> String {
    var indicesDict: Dictionary<Int, Int> = [:]
    var result = ""
    
    for indice in indices {
        indicesDict[indice] = 1
    }
    
    for i in 0..<my_string.count {
        if indicesDict[i] == nil {
            result += String(my_string[my_string.index(my_string.startIndex, offsetBy: i)])
        }
    }
    
    return result
}


print(solution("apporoograpemmemprs", [1, 16, 6, 15, 0, 10, 11, 3]))
