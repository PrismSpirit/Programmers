//
//  메뉴 리뉴얼.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/72411
//
//  Created by Jaehun Lee on 2022/08/25.
//

import Foundation

func subsetMaker(_ set: [String], _ r: Int) -> [[String]] {
    var result: [[String]] = []
    
    func aux(_ index: Int, _ history: [String]) {
        if history.count == r {
            result.append(history)
            return
        }
        
        for i in index..<set.count {
            aux(i + 1, history + [set[i]])
        }
    }
    
    aux(0, [])
    
    return result
}


func solution(_ orders: [String], _ course: [Int]) -> [String] {
    let numOfOrders = orders.count
    let numOfCourse = course.count
    
    var result: [String] = []
    
    var combination: [(Set<String>, Int)] = [([], 0), (Set(orders[0].map { String($0) }), 1)]
    var courseTupleArr: [(Set<Set<String>>, Int)] = Array(repeating: ([[]], 0), count: numOfCourse)
    
    for i in 1..<numOfOrders {
        for j in 0..<combination.count {
            let convertedOrderSet = Set(orders[i].map { String($0) })
            if combination[j].1 == 0 {
                combination[j].0 = convertedOrderSet
                combination[j].1 = 1
            } else {
                let resultOfIntersection = combination[j].0.intersection(convertedOrderSet)
                let numOfIntersection = combination[j].1 + 1
                
                let intersectionResultArr = Array(resultOfIntersection).sorted()
                let lenOfIntersectionResultArr = intersectionResultArr.count
                
                for k in 0..<numOfCourse {
                    if course[k] <= lenOfIntersectionResultArr {
                        let subsetArr = subsetMaker(intersectionResultArr, course[k])
                        
                        for subset in subsetArr {
                            if courseTupleArr[k].1 < numOfIntersection {
                                courseTupleArr[k] = ([Set(subset)], numOfIntersection)
                            } else if courseTupleArr[k].1 == numOfIntersection {
                                courseTupleArr[k].0.insert(Set(subset))
                            }
                        }
                    }
                }
                
                combination.append((resultOfIntersection, numOfIntersection))
            }
        }
        
        combination = [([], 0)] + combination
    }
    
    for courseTuple in courseTupleArr {
        let tmp = courseTuple.0.map { $0 }
        
        for t in tmp {
            if !t.isEmpty {
                result.append(String(Array(t).joined(separator: "").sorted()))
            }
        }
    }
    
    return result.sorted()
}


print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2,3,5]))
print(solution(["XYZ", "XWY", "WXA"], [2,3,4]))
