//
//  명예의 전당 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/138477
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var resultArr: [Int] = []
    
    var HOF: [Int] = []
    
    for dailyScore in score {
        if HOF.count < k {
            HOF.append(dailyScore)
            HOF.sort()
        } else {
            if HOF.first! < dailyScore {
                HOF.removeFirst()
                HOF.append(dailyScore)
                HOF.sort()
            }
        }
        
        resultArr.append(HOF[0])
    }
    
    return resultArr
}


print(solution(3, [10, 100, 20, 150, 1, 100, 200]))
print(solution(4, [0, 300, 40, 300, 20, 70, 150, 50, 500, 1000]))
