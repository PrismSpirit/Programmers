//
//  햄버거 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/133502
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ ingredient: [Int]) -> Int {
    let burger = [1, 2, 3, 1]
    var numOfBurger = 0
    var buffer: [Int] = []
    
    for i in ingredient {
        buffer.append(i)
        
        let lenOfBuffer = buffer.count
        
        if lenOfBuffer >= 4 && Array(buffer[lenOfBuffer - 4..<lenOfBuffer]) == burger {
            numOfBurger += 1
            buffer = Array(buffer[..<(lenOfBuffer - 4)])
        }
    }
    
    return numOfBurger
}


print(solution([2, 1, 1, 2, 3, 1, 2, 3, 1]))
print(solution([1, 3, 2, 1, 2, 1, 3, 1, 2]))
