//
//  주차 요금 계산.swift
//  Programmers
//  https://programmers.co.kr/learn/courses/30/lessons/92341
//
//  Created by Jaehun Lee on 2022/09/18.
//

import Foundation

func calcParkingFee(_ fees: [Int], _ cumulativeParkingMinutes: Int) -> Int {
    let basicMinutes = fees[0]
    let basicFee = fees[1]
    let unitMinutes = fees[2]
    let unitFee = fees[3]
    
    if cumulativeParkingMinutes <= basicMinutes {
        return basicFee
    }
    
    return basicFee + Int(ceil(Double(cumulativeParkingMinutes - basicMinutes) / Double(unitMinutes))) * unitFee
}

func solution(_ fees: [Int], _ records: [String]) -> [Int] {
    var result: [Int] = []
    
    var parkingLot: Dictionary<String, Int> = [:]
    var parkingFeeDict: Dictionary<String, Int> = [:]
    
    for record in records {
        let tmp = record.split(separator: " ").map { String($0) }
        let tmp2 = tmp[0].split(separator: ":").map { Int(String($0))! }
        let parkingMinutes = tmp2[0] * 60 + tmp2[1]
        let carNumber = tmp[1]
        let parkingType = tmp[2]
        
        if parkingType == "IN" {
            parkingLot[carNumber] = parkingMinutes
        } else if parkingType == "OUT" {
            if parkingFeeDict[carNumber] != nil {
                parkingFeeDict[carNumber]! += parkingMinutes - parkingLot[carNumber]!
            } else {
                parkingFeeDict[carNumber] = parkingMinutes - parkingLot[carNumber]!
            }
            parkingLot.removeValue(forKey: carNumber)
        }
    }
    
    for remainCar in parkingLot {
        if parkingFeeDict[remainCar.key] != nil {
            parkingFeeDict[remainCar.key]! += (24 * 60 - 1) - remainCar.value
        } else {
            parkingFeeDict[remainCar.key] = (24 * 60 - 1) - remainCar.value
        }
    }
    
    let sortedParkingFeeDict = parkingFeeDict.sorted {
        return $0.0 < $1.0
    }
    
    for parkingfee in sortedParkingFeeDict {
        result.append(calcParkingFee(fees, parkingfee.value))
    }
        
    return result
}


print(solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]))
print(solution([120, 0, 60, 591], ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"]))
print(solution([1, 461, 1, 10], ["00:00 1234 IN"]))
