//
//  부족한 금액 계산하기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/82612
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64{
    var sum = 0
    
    for i in 1...count {
        sum += price * i
    }
    
    return sum - money > 0 ? Int64(sum - money) : 0
}


print(solution(3, 20, 4))
