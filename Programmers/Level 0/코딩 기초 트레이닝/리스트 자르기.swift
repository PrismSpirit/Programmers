//
//  리스트 자르기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181897
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ n: Int, _ slicer: [Int], _ num_list: [Int]) -> [Int] {
    let (a, b, c) = (slicer[0], slicer[1], slicer[2])
    
    switch n {
    case 1:
        return Array(num_list[...b])
    case 2:
        return Array(num_list[a...])
    case 3:
        return Array(num_list[a...b])
    case 4:
        var tmp: [Int] = []
        
        for i in stride(from: a, to: b + 1, by: c) {
            tmp.append(i)
        }
        
        return tmp.map { num_list[$0] }
    default:
        return []
    }
}


print(solution(3, [1, 5, 2], [1, 2, 3, 4, 5, 6, 7, 8, 9]))
print(solution(4, [1, 5, 2], [1, 2, 3, 4, 5, 6, 7, 8, 9]))
