//
//  서울에서 김서방 찾기.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/12919
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}


print(solution(["Jane", "Kim"]))
