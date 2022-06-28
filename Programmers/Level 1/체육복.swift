//
//  체육복.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42862
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var lostList = lost
    var reserveList = reserve
    var popLostIdxList: [Int] = []

    for i in 0..<lostList.count {
        if let r = reserveList.firstIndex(of: lostList[i]) {
            reserveList.remove(at: r)
            popLostIdxList.append(i)
        }
    }
    
    for i in 0..<popLostIdxList.count {
        lostList.remove(at: popLostIdxList[i] - i)
    }
    
    var result = n - lostList.count
    
    lostList.sort()
    reserveList.sort()
    
    for l in lostList {
        if let r = reserveList.firstIndex(of: l - 1) {
            reserveList.remove(at: r)
            result += 1
            continue
        } else if let r = reserveList.firstIndex(of: l + 1) {
            reserveList.remove(at: r)
            result += 1
            continue
        }
    }

    return result
}


print(solution(5, [2, 4], [1, 3, 5]))
print(solution(5, [2, 4], [3]))
print(solution(3, [3], [1]))
