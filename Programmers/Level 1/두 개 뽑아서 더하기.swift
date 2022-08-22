//
//  두 개 뽑아서 더하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/68644
//
//  Created by Jaehun Lee on 2022/08/22.
//

import Foundation

func combination(_ n: Int, _ r: Int) -> [[Int]] {
    let numArr: [Int] = Array(0..<n)
    var result: [[Int]] = []
    
    func aux(_ index: Int, _ history: [Int]) {
        if history.count == r{
            result.append(history)
            return
        }
        
        for i in index..<n {
            aux(i + 1, history + [numArr[i]])
        }
    }
    
    aux(0, [])
    
    return result
}

func solution(_ numbers: [Int]) -> [Int] {
    let n = numbers.count
    var resultSet: Set<Int> = []
    
    for comb in combination(n, 2) {
        var formedNum = 0
        
        for c in comb {
            formedNum += numbers[c]
        }
        
        resultSet.insert(formedNum)
    }
    
    return Array(resultSet).sorted()
}


print(solution([2,1,3,4,1]))
print(solution([5,0,2,7]))
