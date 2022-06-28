//
//  나머지가 1이 되는 수 찾기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/87389
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int) -> Int {
    for i in 2..<n {
        if n % i == 1 {
            return i
        }
    }
    
    return 0
}


print(solution(10))
print(solution(12))
