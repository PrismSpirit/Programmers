//
//  최소직사각형.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/86491
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var businessCards = sizes
    var maxWidth = 0
    var maxHeight = 0
    
    for i in 0..<businessCards.count {
        if businessCards[i][0] < businessCards[i][1] {
            businessCards[i].reverse()
        }
    }
    
    for i in 0..<businessCards.count {
        if businessCards[i][0] > maxWidth {
            maxWidth = businessCards[i][0]
        }
        if businessCards[i][1] > maxHeight {
            maxHeight = businessCards[i][1]
        }
    }
    
    return maxWidth * maxHeight
}


print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
print(solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))
