//
//  Utilities.swift
//  JsonParsing
//
//  Created by Mantra Ideas on 12/25/16.
//  Copyright © 2016 Mantra Ideas. All rights reserved.
//

import Foundation

class DateConstant : NSDate{
    let formatter = NSDateFormatter();
    let DATEFORMAT_AD = "A.D.";
    let DATEFORMAT_BS = "B.S.";
    
    let monthsBs = ["Baishak", "Jestha", "Ashad", "Shrawan", "Bhadra", "Asoj", "Kartik", "Mangsir", "Poush", "Magh", "Falgun", "Chaitra"];
    let monthsAD = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul","Aug", "Sep", "Oct", "Nov", "Dec"];
    
    let days = ["", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    let months = ["","January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    
    let monthsNep = ["वैशाख", "जेष्ठ", "असार", "श्रावण", "भाद्र", "आश्विन", "कार्तिक", "मंसिर", "पुष", "माघ", "फाल्गुण", "चैत्र"];
    let daysNep = ["", "आइतबार", "सोमबार", "मंगलबार", "बुधबार", "बिहिबार", "शुक्रबार", "शनिबार"];
    let decimalNum = ["०", "१", "२", "३", "४", "५", "६", "७", "८", "९"];

}

extension DateConstant {
    func convertDateToString(format: String, date : NSDate) -> String {
        self.formatter.dateFormat = format
        return formatter.stringFromDate(date)
    }
    
    func convertStringToDate(format : String, date : String) -> NSDate {
        self.formatter.dateStyle = NSDateFormatterStyle.MediumStyle
        self.formatter.timeStyle = .NoStyle
        self.formatter.dateFormat = format
        return formatter.dateFromString(date)!
    }
    
    func getConverted(number : Int) -> String {
        var num = ""
        var mNum = number
        repeat{
          num = "\(self.decimalNum[mNum % 10])\(num)"
          mNum = mNum / 10
         }
        while mNum > 9
        num = "\(decimalNum[mNum])\(num)"
        print("DateUtilities getconverted = \(num)")
      return num
    }
    
    func getDateInString(dh : DateHolder, isEnglish : Bool) -> [String] {
        print("DateConstant, year = \(dh.year) month = \(dh.month) day = \(dh.dayOfMonth)")
        var convertedDate = [String]()
         if (isEnglish) {
          convertedDate.append("\(dh.year) \(months[dh.month]) \(dh.dayOfMonth)")
          convertedDate.append(days[dh.dayOfWeek])
        } else {
         print("Dateconstant, month = \(dh.month)")
         convertedDate.append("\(getConverted(dh.year)) \(self.monthsNep[dh.month]) \(getConverted(dh.dayOfMonth))  गते ")
        convertedDate.append(daysNep[dh.dayOfWeek])
       }
        return convertedDate
    }
    
    func getTimeString(currentDate : NSDate) -> String {
     self.formatter.dateFormat = "HH:mm"
     return formatter.stringFromDate(currentDate)
    }
    
}
