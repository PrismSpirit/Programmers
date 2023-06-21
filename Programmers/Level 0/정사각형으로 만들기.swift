//
//  정사각형으로 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181830
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ arr: [[Int]]) -> [[Int]] {
    var arr = arr
    
    let m = arr.count
    let n = arr[0].count
    
    if m > n {
        for i in 0..<m {
            for _ in 0..<(m - n) {
                arr[i].append(0)
            }
        }
    } else if m < n {
        for _ in 0..<(n - m) {
            var tmp: [Int] = []
            
            for _ in 0..<n {
                tmp.append(0)
            }
            
            arr.append(tmp)
        }
    }
    
    return arr
}


print(solution([[572, 22, 37], [287, 726, 384], [85, 137, 292], [487, 13, 876]]))
print(solution([[57, 192, 534, 2], [9, 345, 192, 999]]))
print(solution([[1, 2], [3, 4]]))
