//
//  문자열 여러 번 뒤집기.swift
//  Programmers
//  https://school.programmers.co.kr/learn/courses/30/lessons/181913
//
//  Created by Jaehun Lee on 2023/06/21.
//

import Foundation

func myReversed(_ s: String, _ query: [Int]) -> String {
    let sArr = s.map { String($0) }
    let a = sArr[..<query[0]].joined()
    let c = sArr[(query[1] + 1)...].joined()
    let b = sArr[query[0]..<(query[1] + 1)].joined()
    
    return a + String(b.reversed()) + c
}

func solution(_ my_string: String, _ queries: [[Int]]) -> String {
    var my_string = my_string
    
    for query in queries {
        my_string = myReversed(my_string, query)
    }
    
    return my_string
}


print(solution("rermgorpsam", [[2, 3], [0, 7], [5, 9], [6, 10]]))
