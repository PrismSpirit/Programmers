//
//  직사각형 넓이 구하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120860
//
//  Created by Jaehun Lee on 2023/01/19.
//

import Foundation

func solution(_ dots: [[Int]]) -> Int {
    let firstDot = dots[0]
    
    for i in 1..<dots.count {
        let vert = abs(dots[i][0] - firstDot[0])
        let hori = abs(dots[i][1] - firstDot[1])
        
        if vert != 0 && hori != 0 {
            return vert * hori
        }
    }
    
    return 0
}


print(solution([[1, 1], [2, 1], [2, 2], [1, 2]]))
print(solution([[-1, -1], [1, 1], [1, -1], [-1, 1]]))
