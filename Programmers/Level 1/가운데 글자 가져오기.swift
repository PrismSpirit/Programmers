//
//  가운데 글자 가져오기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12903
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ s: String) -> String {
    let charList = s.map { String($0) }
    let lenOfS = s.count

    if lenOfS % 2 != 0 {
        return charList[(lenOfS - 1) / 2]
    } else {
        return charList[lenOfS / 2 - 1] + charList[lenOfS / 2]
    }
}


print(solution("abcde"))
print(solution("qwer"))
