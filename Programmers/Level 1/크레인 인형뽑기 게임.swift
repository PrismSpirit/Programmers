//
//  크레인 인형뽑기 게임.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/64061
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    var count = 0
    
    var stackList: [[Int]] = []
    var exit: [Int] = []
    
    let n = board.count
    
    for i in 0..<n {
        var tmp: [Int] = []
        for j in 0..<n {
            if board[n - 1 - j][i] != 0 {
                tmp.append(board[n - 1 - j][i])
            }
        }
        stackList.append(tmp)
    }
    
    for m in moves {
        if !stackList[m - 1].isEmpty {
            var lastElementOfBefore: Int? = nil
            if (exit.count > 0) {
                lastElementOfBefore = exit.last!
            }
            exit.append(stackList[m - 1].removeLast())
            if (exit.count > 1) {
                if lastElementOfBefore! == exit.last! {
                    exit = exit.dropLast(2)
                    count += 2
                }
            }
        }
    }
    
    return count
}


print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))
