//
//  1로 만들기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181880
//
//  Created by Jaehun Lee on 2023/06/20.
//

import Foundation

func solution(_ num_list: [Int]) -> Int {
    var count = 0
    
    for num in num_list {
        var num = num
        
        while num != 1 {
            if num % 2 != 0 {
                num -= 1
            }
            
            num /= 2
            count += 1
        }
    }
    
    return count
}


print(solution([12, 4, 15, 1, 14]))
