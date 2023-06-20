//
//  피자 나눠 먹기 (1).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120814
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ n: Int) -> Int {
    return n % 7 == 0 ? n / 7 : n / 7 + 1
}


print(solution(7))
print(solution(1))
print(solution(15))
