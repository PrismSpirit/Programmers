//
//  택배상자.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/131704
//
//  Created by Jaehun Lee on 2023/06/17.
//

import Foundation

func solution(_ order: [Int]) -> Int {
    let n = order.count
    var mainConveyor: [Int] = Array(1...n).reversed()
    var subConveyor: [Int] = []
    var result = 0
    
    for i in 0..<n {
        if let lastBoxOfSubConveyor = subConveyor.last {
            if lastBoxOfSubConveyor == order[i] {
                subConveyor.removeLast()
                result += 1
                continue
            }
        }
        
        while !mainConveyor.isEmpty {
            let firstBoxOfMainConveyor = mainConveyor.last!
            
            if firstBoxOfMainConveyor == order[i] {
                mainConveyor.removeLast()
                result += 1
                break
            } else if firstBoxOfMainConveyor < order[i] {
                subConveyor.append(mainConveyor.removeLast())
                continue
            } else {
                return result
            }
        }
    }
    
    return result
}


print(solution([4, 3, 1, 2, 5]))
print(solution([5, 4, 3, 2, 1]))
