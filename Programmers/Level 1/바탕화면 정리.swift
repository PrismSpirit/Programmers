//
//  바탕화면 정리.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/161990
//
//  Created by Jaehun Lee on 2023/06/14.
//

import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var m = wallpaper.count
    var n = wallpaper.first!.count
    
    var lu = [m, n]
    var rd = [0, 0]
    
    for i in 0..<m {
        for j in 0..<n {
            if String(wallpaper[i][wallpaper[i].index(wallpaper[i].startIndex, offsetBy: j)]) == "#" {
                if lu[0] > i {
                    lu[0] = i
                }
                if lu[1] > j {
                    lu[1] = j
                }
                if rd[0] < i {
                    rd[0] = i
                }
                if rd[1] < j {
                    rd[1] = j
                }
            }
        }
    }
    
    return [lu[0], lu[1], rd[0] + 1, rd[1] + 1]
}


print(solution([".#...", "..#..", "...#."]))
print(solution(["..........", ".....#....", "......##..", "...##.....", "....#....."]))
print(solution([".##...##.", "#..#.#..#", "#...#...#", ".#.....#.", "..#...#..", "...#.#...", "....#...."]))
print(solution(["..", "#."]))
