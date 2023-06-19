//
//  부분 문자열 이어 붙여 문자열 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181911
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ my_strings: [String], _ parts: [[Int]]) -> String {
    var result = ""
    
    for i in 0..<parts.count {
        let fromIdx = my_strings[i].index(my_strings[i].startIndex, offsetBy: parts[i][0])
        let toIdx = my_strings[i].index(my_strings[i].startIndex, offsetBy: parts[i][1])
        
        result += my_strings[i][fromIdx...toIdx]
    }
    
    return result
}


print(solution(["progressive", "hamburger", "hammer", "ahocorasick"], [[0, 4], [1, 2], [3, 5], [7, 7]]))
