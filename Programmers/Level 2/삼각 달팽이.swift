//
//  삼각 달팽이.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/68645
//
//  Created by Jaehun Lee on 2022/10/02.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    var result: [Int] = []
    
    var snail: [[Int]] = []
    
    var numOfBlock = 0
    
    var coord: [Int] = [0, 0]
    var commandCountArr: [Int] = []
    
    for i in 1...n {
        numOfBlock += i
        
        snail.append(Array(repeating: 0, count: i))
        commandCountArr.append(n - i + 1)
    }
    
    var command = "down"
    var commandIdx = 0
    var i = 1
    while i <= numOfBlock {
        snail[coord[0]][coord[1]] = i
        
        commandCountArr[commandIdx] -= 1
        
        if commandCountArr[commandIdx] == 0 {
            if command == "down" {
                command = "right"
            } else if command == "right" {
                command = "up"
            } else {
                command = "down"
            }
            commandIdx += 1
        }
        
        if command == "down" {
            coord[0] += 1
        } else if command == "right" {
            coord[1] += 1
        } else {
            coord[0] -= 1
            coord[1] -= 1
        }
        
        i += 1
    }
    
    for s in snail {
        result += s
    }
    
    return result
}


print(solution(4))
print(solution(5))
print(solution(6))
