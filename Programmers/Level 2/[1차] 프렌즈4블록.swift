//
//  [1차] 프렌즈4블록.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17679
//
//  Created by Jaehun Lee on 2022/09/27.
//

import Foundation

func solution(_ m: Int, _ n: Int, _ board: [String]) -> Int {
    var board: [[String]] = board.map { $0.map { String($0) } }
    var result = 0
    
    while true {
        var removalCoordArr: [(Int, Int)] = []
        
        for i in 0..<m - 1 {
            for j in 0..<n - 1 {
                if board[i][j] != "" {
                    let blockType = board[i][j]
                    
                    if board[i + 1][j] == blockType && board[i][j + 1] == blockType && board[i + 1][j + 1] == blockType {
                        for x in 0..<2 {
                            for y in 0..<2 {
                                removalCoordArr.append((i + x, j + y))
                            }
                        }
                    }
                }
            }
        }
        
        for removalCoord in removalCoordArr {
            if board[removalCoord.0][removalCoord.1] != "" {
                board[removalCoord.0][removalCoord.1] = ""
                result += 1
            }
            
        }
        
        for j in 0..<n {
            var s = ""
            
            for i in 0..<m {
                s += board[i][j]
            }
            
            let lenOfS = s.count
            
            for i in 0..<m - lenOfS {
                board[i][j] = ""
            }
            
            for i in m - lenOfS..<m {
                board[i][j] = String(s[s.index(s.startIndex, offsetBy: i - (m - lenOfS))])
            }
        }
        
        if removalCoordArr.isEmpty {
            break
        }
    }
    
    return result
}


print(solution(4, 5, ["CCBDE", "AAADE", "AAABF", "CCBBF"]))
print(solution(6, 6, ["TTTANT", "RRFACC", "RRRFCC", "TRRRAA", "TTMMMF", "TMMTTJ"]))
