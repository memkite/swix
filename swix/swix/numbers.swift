//
//  numbers.swift
//  swix
//
//  Created by Scott Sievert on 6/11/14.
//  Copyright (c) 2014 com.scott. All rights reserved.
//

import Foundation
import Accelerate

// use 3.double or 3.14.int or N.int
extension Int{
    var double:Double {return Double(self)}
    var float:Float {return Float(self)}
}
extension Double{
    var int:Int {return Int(self)}
    var float:Float {return Float(self)}
}
extension Float{
    var double:Double {return Double(self)}
    var int:Int {return Int(self)}
}

