//
//  신고 결과 받기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/92334
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    let lenOfList = id_list.count
    
    var idDict: Dictionary<String, Int> = [:]
    
    for i in 0..<lenOfList {
        idDict[id_list[i]] = i
    }
    
    var reportMatrix = Array(repeating: Array(repeating: 0, count: lenOfList), count: lenOfList)
    var reportCountList = Array(repeating: 0, count: lenOfList)
    var bannedCountList = reportCountList
    var bannedIdxList: [Int] = []
    
    let refinedReports = Array(Set(report))
    
    for rfrp in refinedReports {
        let r = rfrp.components(separatedBy: " ")
        let idxOfReporter = idDict[r[0]]!
        let idxOfReportee = idDict[r[1]]!
        
        reportMatrix[idxOfReporter][idxOfReportee] += 1
        reportCountList[idxOfReportee] += 1
        
        if (reportCountList[idxOfReportee] == k) {
            bannedIdxList.append(idxOfReportee)
        }
    }
    
    for x in 0..<lenOfList {
        for i in bannedIdxList {
            if (reportMatrix[x][i] == 1) {
                bannedCountList[x] += 1
            }
        }
    }
    
    return bannedCountList
}


print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
