//
//  거리두기 확인하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/81302
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func getCoord(row: Int, col: Int) -> [(Int, Int)] {
    var result: [(Int, Int)] = []
    
    for x in -1...1 {
        for y in -1...1 {
            if x == 0 && y == 0 {
                continue
            }
            if row + x >= 0 && row + x < 5 && col + y >= 0 && col + y < 5 {
                result.append((row + x, col + y))
            }
        }
    }
    
    if row - 2 >= 0 {
        result.append((row - 2, col))
    }
    if col - 2 >= 0 {
        result.append((row, col - 2))
    }
    if row + 2 < 5 {
        result.append((row + 2, col))
    }
    if col + 2 < 5 {
        result.append((row, col + 2))
    }
    
    return result
}

func separateChecker(_ place: [String]) -> Int {
    let n = place.count
    
    for x in 0..<n {
        for y in 0..<n {
            if place[x][y] == "P" {
                let targetCoords = getCoord(row: x, col: y)
                for targetCoord in targetCoords {
                    if place[targetCoord.0][targetCoord.1] == "P" {
                        if abs(targetCoord.0 - x) + abs(targetCoord.1 - y) == 1 {
                            return 0
                        } else if abs(targetCoord.0 - x) == 2 || abs(targetCoord.1 - y) == 2 {
                            if place[(targetCoord.0 + x) / 2][(targetCoord.1 + y) / 2] != "X" {
                                return 0
                            }
                        } else if abs(targetCoord.0 - x) == 1 && abs(targetCoord.1 - y) == 1 {
                            if place[(targetCoord.0)][y] != "X" || place[x][(targetCoord.1)] != "X" {
                                return 0
                            }
                        }
                    }
                }
            }
        }
    }
    
    return 1
}

func solution(_ places: [[String]]) -> [Int] {
    var result: [Int] = []
    
    for place in places {
        result.append(separateChecker(place))
    }
    
    return result
}

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}


print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"],
                ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"],
                ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"],
                ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"],
                ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
