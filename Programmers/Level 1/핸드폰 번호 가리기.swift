//
//  핸드폰 번호 가리기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12948
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ phone_number: String) -> String {
    var resultList: [String] = []
    
    for i in 0..<phone_number.count {
        if i < phone_number.count - 4 {
            resultList.append("*")
        } else {
            resultList.append(String(phone_number[phone_number.index(phone_number.startIndex, offsetBy: i)]))
        }
    }
    
    return resultList.joined()
}


print(solution("01033334444"))
print(solution("027778888"))
