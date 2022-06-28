//
//  음양 더하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/76501
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    var result = 0
    
    for i in 0..<absolutes.count {
        if signs[i] {
            result += absolutes[i]
        } else {
            result -= absolutes[i]
        }
    }
    
    return result
}


print(solution([4,7,12], [true,false,true]))
print(solution([1,2,3], [false,false,true]))
