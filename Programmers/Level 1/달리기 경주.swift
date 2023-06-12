//
//  달리기 경주.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/178871
//
//  Created by Jaehun Lee on 2023/06/13.
//

import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var players = players
    var idxDict: Dictionary<String, Int> = [:]
    
    for i in 0..<players.count {
        idxDict[players[i]] = i
    }
    
    for calling in callings {
        let calledPlayerIdx = idxDict[calling]!
        let aheadPlayerIdx = calledPlayerIdx - 1
        
        idxDict[players[aheadPlayerIdx]]! += 1
        idxDict[players[calledPlayerIdx]]! -= 1
        
        let tmp = players[aheadPlayerIdx]
        players[aheadPlayerIdx] = players[calledPlayerIdx]
        players[calledPlayerIdx] = tmp
    }
    
    return players
}


print(solution(["mumu", "soe", "poe", "kai", "mine"], ["kai", "kai", "mine", "mine"]))
