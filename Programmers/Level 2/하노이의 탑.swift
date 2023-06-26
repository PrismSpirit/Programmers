//
//  하노이의 탑.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/12946
//
//  Created by Jaehun Lee on 2023/06/27.
//

import Foundation

func solution(_ n: Int) -> [[Int]] {
    var resultArr: [[Int]] = []
    
    func hanoi(_ n: Int, _ from: Int, _ to: Int, _ aux: Int) {
        if n == 1 {
            resultArr.append([from, to])
            return
        }
        
        hanoi(n - 1, from, aux, to)
        resultArr.append([from, to])
        hanoi(n - 1, aux, to, from)
    }
    
    hanoi(n, 1, 3, 2)
    
    return resultArr
}


print(solution(2))
