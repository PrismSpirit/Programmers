//
//  수식 최대화.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/67257
//
//  Created by Jaehun Lee on 2022/09/04.
//

import Foundation

func makePriority(_ opers: [String]) -> [[String]]{
    var opers = opers
    let numOfOpers = opers.count
    var result: [[String]] = []
    
    func aux(_ history: [String]) {
        if history.count == numOfOpers {
            result.append(history)
            return
        }
        
        for i in 0..<opers.count {
            let tmp = opers.remove(at: i)
            aux(history + [tmp])
            opers.insert(tmp, at: i)
        }
    }
    
    aux([])
    
    return result
}

func solution(_ expression: String) -> Int64 {
    var result: Int64 = 0
    
    var numbers = expression.components(separatedBy: ["+", "-", "*"]).map { Int64($0)! }
    var operations: [String] = []
    var priorityArr: [[String]]
    
    for c in expression {
        if c == "+" || c == "-" || c == "*" {
            operations.append(String(c))
        }
    }
    
    priorityArr = makePriority(Array(Set(operations)))
    
    for priority in priorityArr {
        var nums = numbers
        var opers = operations
        
        for prior in priority {
            var numsStack: [Int64] = [nums[0]]
            var opersStack: [String] = []
            
            for i in 0..<opers.count {
                numsStack.append(nums[i + 1])
                
                if opers[i] == prior {
                    let b = numsStack.removeLast()
                    let a = numsStack.removeLast()
                    
                    if opers[i] == "+" {
                        numsStack.append(a + b)
                    } else if opers[i] == "-" {
                        numsStack.append(a - b)
                    } else if opers[i] == "*" {
                        numsStack.append(a * b)
                    }
                } else {
                    opersStack.append(opers[i])
                }
            }
            
            nums = numsStack
            opers = opersStack
        }
        
        if result < abs(nums[0]) {
            result = abs(nums[0])
        }
    }
    
    return result
}


print(solution("100-200*300-500+20"))
print(solution("50*6-3*2"))
