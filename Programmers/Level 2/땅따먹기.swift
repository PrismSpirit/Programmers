//
//  땅따먹기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12913
//
//  Created by Jaehun Lee on 2022/09/29.
//

import Foundation

func solution(_ land: [[Int]]) -> Int {
    let lenOfLand = land.count
    var dpArr: [[Int]] = Array(repeating: Array(repeating: 0, count: 4), count: lenOfLand + 1)
    var result = 0
    
    for i in 1..<lenOfLand + 1 {
        for j in 0..<4 {
            var maxValOfPrevDPArr = 0
            
            for k in 0..<4 {
                if j != k && maxValOfPrevDPArr < dpArr[i - 1][k] {
                    maxValOfPrevDPArr = dpArr[i - 1][k]
                }
            }
            
            let count = maxValOfPrevDPArr + land[i - 1][j]
            
            if result < count {
                result = count
            }
            dpArr[i][j] = count
        }
    }
    
    return result
}


print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
