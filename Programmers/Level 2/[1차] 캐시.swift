//
//  [1차] 캐시.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/17680
//
//  Created by Jaehun Lee on 2022/09/16.
//

import Foundation

func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    var result = 0
    
    var cache: [String] = []
    
    for city in cities {
        let city = city.lowercased()
        
        if cacheSize == 0 {
            result += 5
        } else {
            if cache.contains(city) {
                cache.remove(at: cache.firstIndex(of: city)!)
                cache.append(city)
                
                result += 1
            } else {
                if cache.count == cacheSize {
                    cache.removeFirst()
                    cache.append(city)
                } else {
                    cache.append(city)
                }
                
                result += 5
            }
        }
    }
    
    return result
}


print(solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"]))
print(solution(3, ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"]))
print(solution(2, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))
print(solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))
print(solution(2, ["Jeju", "Pangyo", "NewYork", "newyork"]))
print(solution(0, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA"]))
