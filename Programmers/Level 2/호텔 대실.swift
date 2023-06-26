//
//  호텔 대실.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/155651
//
//  Created by Jaehun Lee on 2023/06/27.
//

import Foundation

func convertBookTimeToMinutes(_ book_time: String) -> Int {
    let tmp = book_time.split(separator: ":").map { Int(String($0))! }
    let time = tmp[0]
    let minute = tmp[1]
    
    return time * 60 + minute
}

func solution(_ book_time: [[String]]) -> Int {
    var timeTable: Dictionary<Int, Int> = [:]
    
    for bt in book_time {
        let checkInTime = convertBookTimeToMinutes(bt[0])
        let cleanFinishTime = convertBookTimeToMinutes(bt[1]) + 10 - 1
        
        for t in checkInTime...cleanFinishTime {
            if t > 1440 {
                continue
            }
            
            if timeTable[t] != nil {
                timeTable[t]! += 1
            } else {
                timeTable[t] = 1
            }
        }
    }
    
    return timeTable.max(by: { $0.value < $1.value } )!.value
}


print(solution([["15:00", "17:00"], ["16:40", "18:20"], ["14:20", "15:20"], ["14:10", "19:20"], ["18:20", "21:20"]]))
print(solution([["09:10", "10:10"], ["10:20", "12:20"]]))
print(solution([["10:20", "12:30"], ["10:20", "12:30"], ["10:20", "12:30"]]))
