//
//  위장.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42578
//
//  Created by Jaehun Lee on 2022/08/23.
//

import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var clothesDict: Dictionary<String, Int> = [:]
    var result: Int = 1
    
    for cloth in clothes {
        if clothesDict[cloth[1]] != nil {
            clothesDict[cloth[1]]! += 1
        } else {
            clothesDict[cloth[1]] = 1
        }
    }
    
    for cloth in Array(clothesDict) {
        result *= (cloth.value + 1)
    }
    
    result -= 1
    
    return result
}

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))
print(solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]))
