//
//  MacBook.swift
//  POPPractice
//
//  Created by kakao on 2022/01/26.
//

import Foundation

struct MacBook {
    let maximumChargingmA: Double
    let totalCapacitancemAh: Double
    var remainingCapacitancemAh: Double
    
    mutating func chargeBattery(charger: Chargeable) {
        let mAperHour = charger.convert(chargeablemAPerHour: maximumChargingmA)
        let mAhToCharged = totalCapacitancemAh - remainingCapacitancemAh
        let takenTime = mAhToCharged / mAperHour
        print(takenTime)
        remainingCapacitancemAh = totalCapacitancemAh
    }
}
