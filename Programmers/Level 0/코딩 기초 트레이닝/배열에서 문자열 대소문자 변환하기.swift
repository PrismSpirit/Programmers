//
//  배열에서 문자열 대소문자 변환하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181875
//
//  Created by Jaehun Lee on 2023/06/19.
//

import Foundation

func solution(_ strArr: [String]) -> [String] {
    var resultArr: [String] = []
    
    for i in 0..<strArr.count {
        if i % 2 != 0 {
            resultArr.append(strArr[i].uppercased())
        } else {
            resultArr.append(strArr[i].lowercased())
        }
    }
    
    return resultArr
}


print(solution(["AAA","BBB","CCC","DDD"]))
print(solution(["aBc","AbC"]))
