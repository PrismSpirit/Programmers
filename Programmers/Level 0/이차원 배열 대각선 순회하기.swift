//
//  이차원 배열 대각선 순회하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181829
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ board: [[Int]], _ k: Int) -> Int {
    var result = 0
    
    for i in 0..<board.count {
        for j in 0..<board[0].count {
            if i + j <= k {
                result += board[i][j]
            }
        }
    }
    
    return result
}


print(solution([[0, 1, 2],[1, 2, 3],[2, 3, 4],[3, 4, 5]], 2))
