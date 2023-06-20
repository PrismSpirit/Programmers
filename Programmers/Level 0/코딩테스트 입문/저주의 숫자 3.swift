//
//  저주의 숫자 3.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120871
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ n: Int) -> Int {
    var result = 0
    
    for _ in 0..<n {
        result += 1
        
        while result % 3 == 0 || String(result).map({ String($0) }).contains("3") {
            result += 1
        }
    }
    
    return result
}


print(solution(15))
print(solution(40))
