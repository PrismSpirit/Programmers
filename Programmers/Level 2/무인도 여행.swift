//
//  무인도 여행.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/154540
//
//  Created by Jaehun Lee on 2023/06/23.
//

import Foundation

func solution(_ maps: [String]) -> [Int] {
    let m = maps.count
    let n = maps[0].count
    var newMaps: [[String]] = []
    var traversedRegion: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
    var resultArr: [Int] = []
    
    func traverse(_ coord: [Int]) {
        if coord[0] < 0 || coord[0] > m - 1 || coord[1] < 0 || coord[1] > n - 1 {
            return
        }
        if newMaps[coord[0]][coord[1]] == "X" {
            return
        }
        if traversedRegion[coord[0]][coord[1]] {
            return
        }
        
        traversedRegion[coord[0]][coord[1]] = true
        resultArr.append(resultArr.removeLast() + Int(newMaps[coord[0]][coord[1]])!)
        
        traverse([coord[0] - 1, coord[1]])
        traverse([coord[0], coord[1] - 1])
        traverse([coord[0], coord[1] + 1])
        traverse([coord[0] + 1, coord[1]])
    }
    
    for map in maps {
        newMaps.append(map.map { String($0) })
    }
    
    for i in 0..<m {
        for j in 0..<n {
            if !traversedRegion[i][j] {
                resultArr.append(0)
                traverse([i, j])
            }
        }
    }
    
    let filteredResultArr = resultArr.filter { $0 != 0 }
    
    return filteredResultArr.isEmpty ? [-1] : filteredResultArr.sorted()
}


print(solution(["X591X","X1X5X","X231X", "1XXX1"]))
print(solution(["XXX","XXX","XXX"]))
