//
//  로또의 최고 순위와 최저 순위.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/77484
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var joker = 0
    var numOfHit = 0
    
    for l in lottos {
        if (l == 0) {
            joker += 1
        }
        else if (win_nums.contains(l)) {
            numOfHit += 1
        }
    }
    
    let best = numOfHit + joker > 1 ? 7 - (numOfHit + joker) : 6
    let worst = numOfHit > 1 ? 7 - numOfHit : 6
    
    
    return [best, worst]
}


print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print(solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))
print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))
