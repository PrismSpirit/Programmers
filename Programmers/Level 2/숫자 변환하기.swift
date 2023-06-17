//
//  숫자 변환하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/154538
//
//  Created by Jaehun Lee on 2023/06/17.
//

import Foundation

func solution(_ x: Int, _ y: Int, _ n: Int) -> Int {
    var q: [[Int]] = []
    q.append([y, 0])
    
    while !q.isEmpty {
        let node = q.removeFirst()
        
        if node[0] == x {
            return node[1]
        }
        
        if node[0] % 3 == 0 && node[0] / 3 >= x {
            q.append([node[0] / 3, node[1] + 1])
        }
        if node[0] % 2 == 0 && node[0] / 2 >= x {
            q.append([node[0] / 2, node[1] + 1])
        }
        if node[0] - n >= x {
            q.append([node[0] - n, node[1] + 1])
        }
    }
    
    return -1
}


print(solution(10, 40, 5))
print(solution(10, 40, 30))
print(solution(2, 5, 4))
