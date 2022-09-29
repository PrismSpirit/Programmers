//
//  피로도.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/87946
//
//  Created by Jaehun Lee on 2022/09/28.
//

import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var result = 0
    
    func aux(_ fPoint: Int, _ dungeons: [[Int]], _ count: Int) {
        var dungeons = dungeons
        
        if dungeons.isEmpty {
            if result < count {
                result = count
            }
            return
        }
        
        for i in 0..<dungeons.count {
            let selectedDungeon = Array(dungeons.remove(at: i))
            
            if fPoint < selectedDungeon[0] {
                aux(fPoint, dungeons, count)
            } else {
                aux(fPoint - selectedDungeon[1], dungeons, count + 1)
            }
            
            dungeons.insert(selectedDungeon, at: i)
        }
    }
    
    aux(k, dungeons, 0)
    
    return result
}


print(solution(80, [[80,20],[50,40],[30,10]]))
