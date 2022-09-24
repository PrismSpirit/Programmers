//
//  타겟 넘버.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/43165
//
//  Created by Jaehun Lee on 2022/09/24.
//

import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    var result = 0
    
    func aux(_ numArr: [Int], _ counter: Int) {
        if numArr.isEmpty {
            if counter == target {
                result += 1
            }
            return
        }
        
        aux(Array(numArr[1...]), counter + numArr[0])
        aux(Array(numArr[1...]), counter - numArr[0])
    }
    
    aux(numbers, 0)
    
    return result
}


print(solution([1, 1, 1, 1, 1], 3))
print(solution([4, 1, 2, 1], 2))
