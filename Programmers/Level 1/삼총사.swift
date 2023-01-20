//
//  삼총사.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/131705
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func combination(_ n: Int, _ r: Int) -> [[Int]] {
    let numArr = Array(0..<n)
    var resultArr: [[Int]] = []
    
    func aux(_ index: Int, _ history: [Int]) {
        if history.count == r {
            resultArr.append(history)
            return
        }
        
        for i in index..<n {
            aux(i + 1, history + [numArr[i]])
        }
    }
    
    aux(0, [])
    
    return resultArr
}

func solution(_ number: [Int]) -> Int {
    return combination(number.count, 3).filter { number[$0[0]] + number[$0[1]] + number[$0[2]] == 0 }.count
}


print(solution([-2, 3, 0, 2, -5]))
print(solution([-3, -2, -1, 0, 1, 2, 3]))
print(solution([-1, 1, -1, 1]))
