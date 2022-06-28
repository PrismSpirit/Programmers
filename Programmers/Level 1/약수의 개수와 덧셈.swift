//
//  약수의 개수와 덧셈.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/77884
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func isNumOfDivisorEven(_ n: Int) -> Bool {
    var count = 0
    
    for i in 1...n {
        if n % i == 0 {
            count += 1
        }
    }
    
    return count % 2 != 0 ? false : true

}

func solution(_ left: Int, _ right: Int) -> Int {
    var result = 0
    
    for n in left...right {
        if isNumOfDivisorEven(n) {
            result += n
        } else {
            result -= n
        }
    }
    
    return result
}


print(solution(13, 17))
print(solution(24, 27))
