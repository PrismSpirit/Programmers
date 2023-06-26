//
//  마법의 엘리베이터.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/148653
//
//  Created by Jaehun Lee on 2023/06/27.
//

import Foundation

func solution(_ storey: Int) -> Int {
    var result = 100_000_000
    let lenOfStorey = String(storey).count
    
    func aux(_ n: Int, _ numOfStone: Int, _ count: Int) {
        if n == 0 {
            if result > numOfStone {
                result = numOfStone
            }
            return
        }
        
        if String(n).count > lenOfStorey + 1 {
            return
        }
        
        var unit = 1
        
        for _ in 0..<count {
            unit *= 10
        }
        
        aux(n + (10 - (n / unit) % 10) * unit, numOfStone + (10 - (n / unit) % 10), count + 1)
        aux(n - (n / unit) % 10 * unit, numOfStone + (n / unit) % 10, count + 1)
    }
    
    aux(storey, 0, 0)
    
    return result
}



print(solution(16))
print(solution(2554))
