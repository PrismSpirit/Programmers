//
//  배열의 길이를 2의 거듭제곱으로 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181857
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ arr: [Int]) -> [Int] {
    let lenOfArr = arr.count
    var arr = arr
    var n = 1
    
    while lenOfArr > n {
        n <<= 1
    }
    
    for _ in 0..<n - lenOfArr {
        arr.append(0)
    }
    
    return arr
}


print(solution([1, 2, 3, 4, 5, 6]))
print(solution([58, 172, 746, 89]))
