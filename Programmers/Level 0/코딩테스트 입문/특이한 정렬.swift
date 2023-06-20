//
//  특이한 정렬.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120880
//
//  Created by Jaehun Lee on 2023/01/13.
//

import Foundation

func solution(_ numlist: [Int], _ n: Int) -> [Int] {
    return numlist.sorted {
        if abs($0 - n) == abs($1 - n) {
            return $0 > $1
        } else {
            return abs($0 - n) < abs($1 - n)
        }
    }
}


print(solution([1, 2, 3, 4, 5, 6], 4))
print(solution([10000,20,36,47,40,6,10,7000], 30))
