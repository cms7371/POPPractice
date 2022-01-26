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
