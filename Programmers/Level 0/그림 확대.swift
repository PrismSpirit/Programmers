//
//  그림 확대.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181836
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ picture: [String], _ k: Int) -> [String] {
    var buf = ""
    var result: [String] = []
    
    for i in 0..<picture.count {
        for j in 0..<picture[0].count {
            let c = String(picture[i][picture[i].index(picture[i].startIndex, offsetBy: j)])
            
            for _ in 0..<k {
                buf += c
            }
        }
        
        for _ in 0..<k {
            result.append(buf)
        }
        
        buf = ""
    }
    
    return result
}


print(solution([".xx...xx.", "x..x.x..x", "x...x...x", ".x.....x.", "..x...x..", "...x.x...", "....x...."], 2))
print(solution(["x.x", ".x.", "x.x"], 3))
