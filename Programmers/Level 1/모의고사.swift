//
//  모의고사.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42840
//
//  Created by Jaehun Lee on 2022/06/28.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var result: [Int] = []
    
    var pointOfA = 0
    var pointOfB = 0
    var pointOfC = 0
    
    let lenOfAnswer = answers.count
    
    for i in 0..<lenOfAnswer {
        if (answers[i] == (i % 5) + 1) {
            pointOfA += 1
        }
        if (i % 2 != 0) {
            if (i % 8 < 4) {
                if (answers[i] == (i % 8)) {
                    pointOfB += 1
                }
            } else {
                if (answers[i] == (i % 8) - (i % 8) / 2 + 1) {
                    pointOfB += 1
                }
            }
        } else {
            if (answers[i] == 2) {
                pointOfB += 1
            }
        }
        if ((i % 10 == 0 || i % 10 == 1) && answers[i] == 3) {
            pointOfC += 1
        } else if ((i % 10 == 2 || i % 10 == 3) && answers[i] == 1) {
            pointOfC += 1
        } else if ((i % 10 == 4 || i % 10 == 5) && answers[i] == 2) {
            pointOfC += 1
        } else if ((i % 10 == 6 || i % 10 == 7) && answers[i] == 4) {
            pointOfC += 1
        } else if ((i % 10 == 8 || i % 10 == 9) && answers[i] == 5) {
            pointOfC += 1
        }
    }
    
    let pointList = [pointOfA, pointOfB, pointOfC]
    
    let maxOfPoint = pointList.max()!
    
    for i in 0..<pointList.count {
        if pointList[i] == maxOfPoint {
            result.append(i + 1)
        }
    }

    return result
}


print(solution([1,2,3,4,5]))
print(solution([1,3,2,4,2]))
