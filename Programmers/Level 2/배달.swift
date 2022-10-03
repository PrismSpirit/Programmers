//
//  배달.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12978
//
//  Created by Jaehun Lee on 2022/10/03.
//

import Foundation

func solution(_ N: Int, _ road: [[Int]], _ k: Int) -> Int {
    var result = 0
    
    var dist: [[Int?]] = Array(repeating: Array(repeating: nil, count: N + 1), count: N + 1)
    
    for r in road {
        if dist[r[0]][r[1]] != nil && dist[r[1]][r[0]] != nil {
            if dist[r[0]][r[1]]! > r[2] || dist[r[1]][r[0]]! > r[2] {
                dist[r[0]][r[1]] = r[2]
                dist[r[1]][r[0]] = r[2]
            }
        } else {
            dist[r[0]][r[1]] = r[2]
            dist[r[1]][r[0]] = r[2]
        }
    }
    
    for i in 1...N {
        dist[i][i] = 0
    }
    
    for i in 1...N {
        for j in 1...N {
            for k in 1...N {
                if dist[j][i] != nil && dist[i][k] != nil {
                    if dist[j][k] == nil || (dist[j][k]! > dist[j][i]! + dist[i][k]!) {
                        dist[j][k] = dist[j][i]! + dist[i][k]!
                    }
                }
            }
        }
    }
    
    for i in 1...N {
        if dist[1][i]! <= k {
            result += 1
        }
    }
    
    return result
}


print(solution(5, [[1,2,1],[2,3,3],[5,2,2],[1,4,2],[5,3,1],[5,4,2]], 3))
print(solution(6, [[1,2,1],[1,3,2],[2,3,2],[3,4,3],[3,5,2],[3,5,3],[5,6,1]], 4))
