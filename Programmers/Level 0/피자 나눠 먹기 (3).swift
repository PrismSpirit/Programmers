//
//  피자 나눠 먹기 (3).swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120816
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ slice: Int, _ n: Int) -> Int {
    return n % slice == 0 ? n / slice : n / slice + 1
}


print(solution(7, 10))
print(solution(4, 12))
