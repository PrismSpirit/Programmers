//
//  정수를 나선형으로 배치하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181832
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ n: Int) -> [[Int]] {
    var tmpArr = Array(repeating: 0, count: n)
    tmpArr = [-1] + tmpArr + [-1]
    var extendedArr: [[Int]] = [Array(repeating: -1, count: n + 2)] + Array(repeating: tmpArr, count: n) + [Array(repeating: -1, count: n + 2)]
    var result: [[Int]] = []
    
    var direction: String = "right"
    var x = 1
    var y = 1
    
    for i in 1...(n * n) {
        extendedArr[x][y] = i
        
        if direction == "right" {
            if extendedArr[x][y + 1] != 0 {
                direction = "down"
                x += 1
            } else {
                y += 1
            }
        } else if direction == "down" {
            if extendedArr[x + 1][y] != 0 {
                direction = "left"
                y -= 1
            } else {
                x += 1
            }
        }  else if direction == "left" {
            if extendedArr[x][y - 1] != 0 {
                direction = "up"
                x -= 1
            } else {
                y -= 1
            }
        } else if direction == "up" {
            if extendedArr[x - 1][y] != 0 {
                direction = "right"
                y += 1
            } else {
                x -= 1
            }
        }
    }
    
    for i in 1...n {
        var tmp: [Int] = []
        
        for j in 1...n {
            tmp.append(extendedArr[i][j])
        }
        
        result.append(tmp)
    }
    
    return result
}


print(solution(4))
print(solution(5))
