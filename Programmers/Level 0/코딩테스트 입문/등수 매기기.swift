//
//  등수 매기기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120882
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ score: [[Int]]) -> [Int] {
    var queue: [[Int]] = []
    
    for sc in score {
        let sumOfsc = sc[0] + sc[1]
        
        var rank = 1
        
        for i in 0..<queue.count {
            let sumOfq = queue[i][0] + queue[i][1]
            
            if sumOfsc < sumOfq {
                rank += 1
            } else if sumOfsc > sumOfq {
                queue[i][2] += 1
            }
        }
        
        queue.append(sc + [rank])
    }
    
    return queue.map { $0[2] }
}


print(solution([[80, 70], [90, 50], [40, 70], [50, 80]]))
print(solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]]))
