//
//  행렬 테두리 회전하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/77485
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ rows: Int, _ columns: Int, _ queries: [[Int]]) -> [Int] {
    var matrix: [[Int]] = []
    var movedNumerMinList: [Int] = []
    for x in 1...rows {
        var tmp: [Int] = []
        for y in 1...columns {
            tmp.append((x - 1) * columns + y)
        }
        matrix.append(tmp)
    }
    
    for query in queries {
        var min = 10000
        let RU = matrix[query[0] - 1][query[3] - 1]
        if RU < min {
            min = RU
        }
        for x in (query[1]..<query[3]).reversed() {
            matrix[query[0] - 1][x] = matrix[query[0] - 1][x - 1]
            if matrix[query[0] - 1][x - 1] < min {
                min = matrix[query[0] - 1][x - 1]
            }
        }
        for x in (query[0]..<query[2]) {
            matrix[x - 1][query[1] - 1] = matrix[x][query[1] - 1]
            if matrix[x][query[1] - 1] < min {
                min = matrix[x][query[1] - 1]
            }
        }
        for x in query[1]..<query[3] {
            matrix[query[2] - 1][x - 1] = matrix[query[2] - 1][x]
            if matrix[query[2] - 1][x] < min {
                min = matrix[query[2] - 1][x]
            }
        }
        for x in (query[0]..<query[2] - 1).reversed() {
            matrix[x + 1][query[3] - 1] = matrix[x][query[3] - 1]
            if matrix[x][query[3] - 1] < min {
                min = matrix[x][query[3] - 1]
            }
        }
        matrix[query[0]][query[3] - 1] = RU
        movedNumerMinList.append(min)
    }
    
    return movedNumerMinList
}


print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]))
print(solution(3, 3, [[1,1,2,2],[1,2,2,3],[2,1,3,2],[2,2,3,3]]))
print(solution(100, 97, [[1,1,100,97]]))
