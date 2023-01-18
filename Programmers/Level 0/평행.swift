//
//  평행.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120875
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func combination(_ n: Int, _ r: Int) -> [[Int]] {
    let numArr = Array(0..<n)
    var result: [[Int]] = []
    
    func aux(_ index: Int, _ history: [Int]) {
        if history.count == r {
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

func solution(_ dots: [[Int]]) -> Int {
    var aArr: [Double] = []
    
    for coord in combination(4, 2) {
        let x1 = dots[coord[0]][0]
        let x2 = dots[coord[1]][0]
        let y1 = dots[coord[0]][1]
        let y2 = dots[coord[1]][1]

        let a = Double(y2 - y1) / Double(x2 - x1)

        if aArr.contains(a) {
            return 1
        }
        
        aArr.append(a)
    }
    
    return 0
}


print(solution([[1, 4], [9, 2], [3, 8], [11, 6]]))
print(solution([[3, 5], [4, 1], [2, 4], [5, 10]]))
