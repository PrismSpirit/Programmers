//
//  이어 붙인 수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181928
//
//  Created by Jaehun Lee on 2023/06/18.
//

import Foundation

func solution(_ num_list: [Int]) -> Int {
    var oddString = ""
    var evenString = ""
    
    for num in num_list {
        if num % 2 != 0 {
            oddString += String(num)
        } else {
            evenString += String(num)
        }
    }
    
    return Int(oddString)! + Int(evenString)!
}


print(solution([3, 4, 5, 2, 1]))
print(solution([5, 7, 8, 3]))
