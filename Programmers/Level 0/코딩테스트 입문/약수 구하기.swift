//
//  약수 구하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120897
//
//  Created by Jaehun Lee on 2023/01/18.
//

import Foundation

func solution(_ n: Int) -> [Int] {
    var resultArr: [Int] = []
    
    for i in 1...n {
        if n % i == 0 {
            resultArr.append(i)
        }
    }
    
    return resultArr
}


print(solution(24))
print(solution(29))
