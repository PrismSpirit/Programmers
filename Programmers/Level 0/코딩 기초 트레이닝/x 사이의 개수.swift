//
//  x 사이의 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181867
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ myString: String) -> [Int] {
    let splittedMyString = myString.split(separator: "x", omittingEmptySubsequences: false)
    
    return splittedMyString.map { $0.count }
}


print(solution("oxooxoxxox"))
print(solution("xabcxdefxghi"))
