//
//  쿼드압축 후 개수 세기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/68936
//
//  Created by Jaehun Lee on 2022/10/02.
//

import Foundation

func solution(_ arr: [[Int]]) -> [Int] {
    let n = arr.count
    
    var numOfOne = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] == 1 {
                numOfOne += 1
            }
        }
    }
    
    var numOfZero = (n * n) - numOfOne
    
    func aux(_ rowStart: Int, _ rowEnd: Int, _ colStart: Int, _ colEnd: Int) {
        if rowEnd - rowStart == 1 {
            return
        }
        
        var flag = true
        
        let number = arr[rowStart][colStart]
        
        for i in rowStart..<rowEnd {
            for j in colStart..<colEnd {
                if arr[i][j] != number {
                    flag = false
                    break
                }
            }
        }
        
        if flag {
            if number == 1 {
                numOfOne -= (rowEnd - rowStart) * (rowEnd - rowStart)
                numOfOne += 1
            } else {
                numOfZero -= (rowEnd - rowStart) * (rowEnd - rowStart)
                numOfZero += 1
            }
        } else {
            aux(rowStart, (rowStart + rowEnd) / 2, colStart, (colStart + colEnd) / 2)
            aux((rowStart + rowEnd) / 2, rowEnd, colStart, (colStart + colEnd) / 2)
            aux(rowStart, (rowStart + rowEnd) / 2, (colStart + colEnd) / 2, colEnd)
            aux((rowStart + rowEnd) / 2, rowEnd, (colStart + colEnd) / 2, colEnd)
        }
    }
    
    aux(0, n, 0, n)
    
    return [numOfZero, numOfOne]
}


print(solution([[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]))
print(solution([[1,1,1,1,1,1,1,1],[0,1,1,1,1,1,1,1],[0,0,0,0,1,1,1,1],[0,1,0,0,1,1,1,1],[0,0,0,0,0,0,1,1],[0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,1],[0,0,0,0,1,1,1,1]]))
