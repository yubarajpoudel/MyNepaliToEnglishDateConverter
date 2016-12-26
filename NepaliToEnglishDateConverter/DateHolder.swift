//
//  DateConverter.swift
//  JsonParsing
//
//  Created by Mantra Ideas on 12/25/16.
//  Copyright © 2016 Mantra Ideas. All rights reserved.
//

import Foundation

class DateHolder {
    var year = Int();
    var month = Int()
    var dayOfMonth = Int()
    var dayOfWeek = Int()
    
    init(year : Int, month : Int, dayOfMonth : Int) {
    self.year = year
    self.month = month
    self.dayOfMonth = dayOfMonth
    }
    
    init(year : Int, month : Int, dayOfMonth : Int, dayOfWeek : Int) {
    self.year = year
    self.month = month
    self.dayOfMonth = dayOfMonth
    self.dayOfWeek = dayOfWeek
				
    }
    

}
