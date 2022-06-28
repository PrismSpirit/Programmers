//
//  문자열을 정수로 바꾸기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12925
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String) -> Int {
    if s[0] != "+" && s[0] != "-" {
        return Int(s)!
    } else if s[0] == "+" {
        return Int(s[s.index(s.startIndex, offsetBy: 1)...])!
    } else {
        return -1 * Int(s[s.index(s.startIndex, offsetBy: 1)...])!
    }
}

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}


print(solution("1234"))
print(solution("-1234"))
