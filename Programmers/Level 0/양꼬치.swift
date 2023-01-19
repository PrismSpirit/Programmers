//
//  양꼬치.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120830
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ n: Int, _ k: Int) -> Int {
    return 12000 * n + 2000 * (k - (n / 10))
}


print(solution(10, 3))
print(solution(64, 6))
