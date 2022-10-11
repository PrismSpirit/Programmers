//
//  가장 큰 정사각형 찾기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12905
//
//  Created by Jaehun Lee on 2022/10/03.
//

import Foundation

func solution(_ board: [[Int]]) -> Int {
    var board = board
    
    let m = board.count
    let n = board[0].count
    
    var maxLenOfSide = 0
    
    for i in 0..<m {
        for j in 0..<n {
            if board[i][j] == 1 && i != 0 && j != 0 {
                board[i][j] = min(board[i - 1][j], board[i][j - 1], board[i - 1][j - 1]) + 1
            }
            
            if maxLenOfSide < board[i][j] {
                maxLenOfSide = board[i][j]
            }
        }
    }
    
    return maxLenOfSide * maxLenOfSide
}


print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]])) // 9
print(solution([[0,0,1,1],[1,1,1,1]])) // 4
