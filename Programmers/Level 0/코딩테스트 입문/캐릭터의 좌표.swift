//
//  캐릭터의 좌표.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120861
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ keyinput: [String], _ board: [Int]) -> [Int] {
    let maxX = (board[0] - 1) / 2
    let maxY = (board[1] - 1) / 2
    
    var coord: [Int] = [0, 0]
    
    for command in keyinput {
        switch command {
        case "left":
            if coord[0] != (-1 * maxX) {
                coord[0] -= 1
            }
        case "right":
            if coord[0] != maxX {
                coord[0] += 1
            }
        case "up":
            if coord[1] != maxY {
                coord[1] += 1
            }
        case "down":
            if coord[1] != (-1 * maxY) {
                coord[1] -= 1
            }
        default:
            return []
        }
    }
    
    return coord
}


print(solution(["left", "right", "up", "right", "right"], [11, 11]))
print(solution(["down", "down", "down", "down", "down"], [7, 9]))
