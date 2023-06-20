//
//  빈 배열에 추가, 삭제하기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181860
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func solution(_ arr: [Int], _ flag: [Bool]) -> [Int] {
    var X: [Int] = []
    
    for i in 0..<arr.count {
        if flag[i] {
            for _ in 0..<arr[i] * 2 {
                X.append(arr[i])
            }
        } else {
            for _ in 0..<arr[i] {
                X.removeLast()
            }
        }
    }
    
    return X
}


print(solution([3, 2, 4, 1, 3], [true, false, true, false, false]))
