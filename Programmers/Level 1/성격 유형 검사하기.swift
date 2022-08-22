//
//  성격 유형 검사하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/118666
//
//  Created by Jaehun Lee on 2022/08/22.
//

import Foundation

func solution(_ survey: [String], _ choices: [Int]) -> String {
    let n = choices.count
    var categories: [Dictionary<String, Int>] = []
    var result: String = ""
    
    categories.append(["R": 0, "T": 0])
    categories.append(["C": 0, "F": 0])
    categories.append(["J": 0, "M": 0])
    categories.append(["A": 0, "N": 0])
    
    for i in 0..<n {
        let cat_neg = String(survey[i][survey[i].index(survey[i].startIndex, offsetBy: 0)])
        let cat_pos = String(survey[i][survey[i].index(survey[i].startIndex, offsetBy: 1)])
        let score = abs(choices[i] - 4)

        if choices[i] < 4 {
            for i in 0..<4 {
                if categories[i][cat_neg] != nil {
                    categories[i][cat_neg]! += score
                }
            }
        } else if choices[i] > 4 {
            for i in 0..<4 {
                if categories[i][cat_pos] != nil {
                    categories[i][cat_pos]! += score
                }
            }
        }
    }
    
    for category in categories {
        let sortedCategory = category.sorted {
            if $0.1 != $1.1 {
                return $0.1 > $1.1
            } else {
                return $0.0 < $1.0
            }
        }
        result += sortedCategory[0].key
    }
    
    return result
}


print(solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5]))
print(solution(["TR", "RT", "TR"], [7, 1, 3]))
