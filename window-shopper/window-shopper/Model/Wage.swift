//
//  Wage.swift
//  window-shopper
//
//  Created by Alfonso Rojas on 1/22/22.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
