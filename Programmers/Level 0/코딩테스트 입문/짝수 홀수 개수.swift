//
//  짝수 홀수 개수.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/120824
//
//  Created by Jaehun Lee on 2023/01/20.
//

import Foundation

func solution(_ num_list: [Int]) -> [Int] {
    let lenOfNumList = num_list.count
    
    let numOfEven = num_list.filter { $0 % 2 == 0 }.count
    let numOfOdd = lenOfNumList - numOfEven
    
    return [numOfEven, numOfOdd]
}


print(solution([1, 2, 3, 4, 5]))
print(solution([1, 3, 5, 7]))
