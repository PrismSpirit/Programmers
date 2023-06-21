//
//  배열 만들기 2.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181921
//
//  Created by Jaehun Lee on 2023/06/22.
//

import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    var result: [String] = []
    
    func aux(_ s: String) {
        if Int(s)! > r {
            return
        }
        
        if Int(s)! >= l {
            result.append(s)
        }
        
        aux(s + "0")
        aux(s + "5")
    }
    
    aux("5")
    
    return result.isEmpty ? [-1] : result.map { Int($0)! }.sorted()
}


print(solution(5, 555))
print(solution(10, 20))
