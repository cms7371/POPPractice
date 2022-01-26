//
//  Chargeable.swift
//  POPPractice
//
//  Created by kakao on 2022/01/26.
//

import Foundation

protocol Chargeable {
    var chargemAPerHour: Double { get }
    func convert(chargeablemAPerHour: Double) -> Double
}

extension Chargeable {
    func convert(chargeablemAPerHour: Double) -> Double {
        return min(chargeablemAPerHour, self.chargemAPerHour)
    }
}

struct Charger: Chargeable {
    var chargemAPerHour: Double
}

struct MacCharger: Chargeable {
    var chargemAPerHour: Double
}

struct WatchCharger: Chargeable {
    var chargemAPerHour: Double
}
