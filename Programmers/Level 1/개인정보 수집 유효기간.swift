//
//  개인정보 수집 유효기간.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/150370
//
//  Created by Jaehun Lee on 2023/01/08.
//

import Foundation

func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    var resultArr: [Int] = []
    
    let todayYMDArray = today.split(separator: ".").map { String($0) }
    let todayYear = Int(todayYMDArray[0])!
    let todayMonth = Int(todayYMDArray[1])!
    let todayDay = Int(todayYMDArray[2])!
    
    var termsInfoDict: Dictionary<String, Int> = [:]
    
    for term in terms {
        let tmp = term.split(separator: " ").map { String($0) }
        termsInfoDict[tmp[0]] = Int(tmp[1])!
    }
    
    var i = 1
    
    for privacy in privacies {
        let tmp = privacy.split(separator: " ").map { String($0) }
        let YMDArray = tmp[0].split(separator: ".").map { String($0) }
        var year = Int(YMDArray[0])!
        var month = Int(YMDArray[1])!
        let day = Int(YMDArray[2])!
        
        let term = tmp[1]
        let validity = termsInfoDict[term]!
        
        month += validity
        
        while month > 12 {
            month -= 12
            year += 1
        }
        
        if (todayYear > year) {
            resultArr.append(i)
        } else if (todayYear == year && todayMonth > month) {
            resultArr.append(i)
        } else if (todayYear == year && todayMonth == month && todayDay >= day) {
            resultArr.append(i)
        }
        
        i += 1
    }
    
    return resultArr
}


print(solution("2022.05.19", ["A 6", "B 12", "C 3"], ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"]))
print(solution("2020.01.01", ["Z 3", "D 5"], ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"]))
