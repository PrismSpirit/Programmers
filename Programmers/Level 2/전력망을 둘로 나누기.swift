//
//  전력망을 둘로 나누기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/86971
//
//  Created by Jaehun Lee on 2023/06/24.
//

import Foundation

func solution(_ n: Int, _ wires: [[Int]]) -> Int {
    var wires = wires
    var result = n
    
    for i in 0..<wires.count {
        var visitedNode: [Bool] = Array(repeating: false, count: n)
        var count = 0
        let wire = wires.remove(at: i)
        
        func traverse(_ node: Int) {
            if visitedNode[node - 1] {
                return
            }
            
            visitedNode[node - 1] = true
            count += 1
            
            for i in 0..<n - 2 {
                let a = wires[i][0]
                let b = wires[i][1]
                
                if a == node {
                    traverse(b)
                } else if b == node {
                    traverse(a)
                }
            }
        }
        
        traverse(wire[0])
        wires.insert(wire, at: i)
        
        if abs((n - count) - count) < result {
            result = abs((n - count) - count)
        }
    }
    
    return result
}


print(solution(9, [[1,3],[2,3],[3,4],[4,5],[4,6],[4,7],[7,8],[7,9]]))
print(solution(4, [[1,2],[2,3],[3,4]]))
print(solution(7, [[1,2],[2,7],[3,7],[3,4],[4,5],[6,7]]))
