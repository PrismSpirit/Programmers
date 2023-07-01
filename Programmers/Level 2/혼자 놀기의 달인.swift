//
//  혼자 놀기의 달인.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/131130
//
//  Created by Jaehun Lee on 2023/07/02.
//

import Foundation

func solution(_ cards: [Int]) -> Int {
    let n = cards.count
    var isTraversed: [Bool] = Array(repeating: false, count: n + 1)
    var pointArr: [Int] = []
    
    for i in 0..<n {
        if !isTraversed[i + 1] {
            var currIdx = i
            var count = 0
            
            while true {
                if cards[currIdx] == i + 1 {
                    count += 1
                    isTraversed[currIdx + 1] = true
                    break
                }
                
                count += 1
                isTraversed[currIdx + 1] = true
                currIdx = cards[currIdx] - 1
            }
            
            pointArr.append(count)
        }
    }
    
    let sortedPointArr = pointArr.sorted(by: >)
    
    return sortedPointArr.count == 1 ? 0 : sortedPointArr[0] * sortedPointArr[1]
}


print(solution([8,6,3,7,2,5,1,4]))
