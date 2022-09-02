//
//  두 큐 합 같게 만들기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/118667
//
//  Created by Jaehun Lee on 2022/09/01.
//

import Foundation

func solution(_ queue1: [Int], _ queue2: [Int]) -> Int {
    let lenOfQ = queue1.count
    
    let q1 = queue1 + queue2 + queue1
    let q2 = queue2 + queue1 + queue2
    
    let lenOfLongQ = lenOfQ * 3
    
    var startPointOfQ1 = 0
    var endPointOfQ1 = lenOfQ - 1
    var startPointOfQ2 = 0
    var endPointOfQ2 = lenOfQ - 1
    var sumOfQ1 = queue1.reduce(0, +)
    var sumOfQ2 = queue2.reduce(0, +)
    
    var count = 0
    
    while startPointOfQ1 <= endPointOfQ1 && startPointOfQ2 <= endPointOfQ2 {
        if startPointOfQ1 >= lenOfLongQ || endPointOfQ2 >= lenOfLongQ || startPointOfQ2 >= lenOfLongQ || endPointOfQ2 >= lenOfLongQ {
            break
        }
        
        if sumOfQ1 < sumOfQ2 {
            sumOfQ1 += q2[startPointOfQ2]
            sumOfQ2 -= q2[startPointOfQ2]
            startPointOfQ2 += 1
            endPointOfQ1 += 1
            count += 1
        } else if sumOfQ1 > sumOfQ2 {
            sumOfQ1 -= q1[startPointOfQ1]
            sumOfQ2 += q1[startPointOfQ1]
            startPointOfQ1 += 1
            endPointOfQ2 += 1
            count += 1
        }
        
        if sumOfQ1 == sumOfQ2 {
            return count
        }
    }
    
    return -1
}


print(solution([3, 2, 7, 2], [4, 6, 5, 1]))
print(solution([1, 2, 1, 2], [1, 10, 1, 2]))
print(solution([1, 1], [1, 5]))
