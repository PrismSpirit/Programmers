//
//  오픈채팅방.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42888
//
//  Created by Jaehun Lee on 2022/06/29.
//

import Foundation

func solution(_ record: [String]) -> [String] {
    var result: [String] = []
    var log: [[String]] = []
    
    var nickPIDDict: Dictionary<String, String> = [:]
    
    for r in record {
        var tmp: [String] = []
        let rlist = r.components(separatedBy: " ")
        
        tmp.append(rlist[0])
        tmp.append(rlist[1])
        
        if rlist.count == 3 {
            nickPIDDict[rlist[1]] = rlist[2]
        }
        
        if rlist[0] != "Change" {
            log.append(tmp)
        }
    }
    
    for l in log {
        var tmp: String = ""
        tmp += nickPIDDict[l[1]]!
        
        if l[0] == "Enter" {
            tmp += "님이 들어왔습니다."
        } else if l[0] == "Leave" {
            tmp += "님이 나갔습니다."
        }
        result.append(tmp)
    }
    
    return result
}


print(solution(["Enter uid1234 Muzi","Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
