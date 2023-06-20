//
//  커피 심부름.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181837
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func converter(_ menu: String) -> String {
    if menu == "anything" || menu.contains("americano") {
        return "americano"
    } else {
        return "cafelatte"
    }
}

func solution(_ order: [String]) -> Int {
    var sum = 0
    
    for menu in order {
        if converter(menu) == "americano" {
            sum += 4500
        } else {
            sum += 5000
        }
    }
    
    return sum
}


print(solution(["cafelatte", "americanoice", "hotcafelatte", "anything"]))
print(solution(["americanoice", "americano", "iceamericano"]))
