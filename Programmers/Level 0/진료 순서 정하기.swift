//
//  진료 순서 정하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120835
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ emergency: [Int]) -> [Int] {
    var priorityArr: [Int] = []
    
    for patient in emergency {
        var p = 1
        
        for i in 0..<priorityArr.count {
            if emergency[i] < patient {
                priorityArr[i] += 1
            } else {
                p += 1
            }
        }
        
        priorityArr.append(p)
    }
    
    return priorityArr
}


print(solution([3, 76, 24]))
print(solution([1, 2, 3, 4, 5, 6, 7]))
print(solution([30, 10, 23, 6, 100]))

