//
//  다리를 지나는 트럭.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/42583
//
//  Created by Jaehun Lee on 2022/10/02.
//

import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    let numOfTruck = truck_weights.count
    
    var truck_weights = truck_weights
    var bridge: [[Int]] = []
    var destination: [Int] = []
    var currBridgeWeight = 0
    var time = 0
    
    while destination.count < numOfTruck {
        if !bridge.isEmpty && bridge.first![1] == bridge_length {
            let selectedTruck = bridge.removeFirst()
            
            destination.append(selectedTruck[0])
            currBridgeWeight -= selectedTruck[0]
        }
        
        for i in 0..<bridge.count {
            bridge[i][1] += 1
        }
        
        if !truck_weights.isEmpty && currBridgeWeight + truck_weights.first! <= weight {
            let selectedTruck = truck_weights.removeFirst()
            
            bridge.append([selectedTruck, 1])
            currBridgeWeight += selectedTruck
        }
        
        time += 1
    }
    
    return time
}


print(solution(2, 10, [7,4,5,6]))
print(solution(100, 100, [10]))
print(solution(100, 100, [10,10,10,10,10,10,10,10,10,10]))
