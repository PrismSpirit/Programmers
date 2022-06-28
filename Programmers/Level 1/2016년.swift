//
//  2016년.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12901
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ a: Int, _ b: Int) -> String {
    var days = 0
    
    let dayOFWeek = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let daysOfMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    for i in 0..<(a - 1) {
        days += daysOfMonth[i]
    }
    days += (b - 1)

    return dayOFWeek[days % 7]
}


print(solution(5, 24))
