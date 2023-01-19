//
//  옷가게 할인 받기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120818
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ price: Int) -> Int {
    if price >= 500_000 {
        return Int(Double(price) * 0.8)
    } else if price >= 300_000 {
        return Int(Double(price) * 0.9)
    } else if price >= 100_000 {
        return Int(Double(price) * 0.95)
    }
    
    return price
}


print(solution(150000))
print(solution(580000))
