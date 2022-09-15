//
//  최댓값과 최솟값.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12939
//
//  Created by Jaehun Lee on 2022/09/15.
//

import Foundation

func solution(_ s: String) -> String {
    let numArr = s.split(separator: " ").map { Int(String($0))! }.sorted()
    
    return "\(numArr.first!) \(numArr.last!)"
}


print(solution("1 2 3 4"))
print(solution("-1 -2 -3 -4"))
print(solution("-1 -1"))
