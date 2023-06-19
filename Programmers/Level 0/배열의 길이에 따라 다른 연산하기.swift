//
//  배열의 길이에 따라 다른 연산하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181854
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ arr: [Int], _ n: Int) -> [Int] {
    var arr = arr
    
    if arr.count % 2 != 0 {
        for i in 0..<arr.count {
            if i % 2 == 0 {
                arr[i] += n
            }
        }
    } else {
        for i in 0..<arr.count {
            if i % 2 != 0 {
                arr[i] += n
            }
        }
    }
    
    return arr
}


print(solution([49, 12, 100, 276, 33], 27))
print(solution([444, 555, 666, 777], 100))
