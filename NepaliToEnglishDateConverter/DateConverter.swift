//
//  DateConverter.swift
//  JsonParsing
//
//  Created by Mantra Ideas on 12/25/16.
//  Copyright © 2016 Mantra Ideas. All rights reserved.
//

import Foundation

public class DateConverter {
    
       let TAG = "DateConverter"
        init() {
        initNepaliMap();
        }
    
    
    var nepaliMap = NSDictionary();
    func initNepaliMap() -> Void {
        nepaliMap = [2000: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2001: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2002: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2003: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2004: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2005: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2006: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2007: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2008: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31],
                    2009: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2010: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2011: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2012: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30],
                    2013: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2014: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2015: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2016: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30],
                    2017: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2018: [0, 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2019: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2020: [0, 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30],
                    2021: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2022: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30],
                    2023: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2024: [0, 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30],
                    2025: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2026: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2027: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2028: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2029: [0, 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30],
                    2030: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2031: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2032: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2033: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2034: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2035: [0, 30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31],
                    2036: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2037: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2038: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2039: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30],
                    2040: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2041: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2042: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2043: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30],
                    2044: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2045: [0, 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2046: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2047: [0, 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30],
                    2048: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2049: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30],
                    2050: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2051: [0, 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30],
                    2052: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2053: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30],
                    2054: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2055: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2056: [0, 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30],
                    2057: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2058: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2059: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2060: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2061: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2062: [0, 31, 31, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31],
                    2063: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2064: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2065: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2066: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31],
                    2067: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2068: [0, 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2069: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2070: [0, 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30],
                    2071: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2072: [0, 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30],
                    2073: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31],
                    2074: [0, 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30],
                    2075: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2076: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30],
                    2077: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31],
                    2078: [0, 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30],
                    2079: [0, 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30],
                    2080: [0, 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30],
                    2081: [0, 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30],
                    2082: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30],
                    2083: [0, 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30],
                    2084: [0, 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30],
                    2085: [0, 31, 32, 31, 32, 30, 31, 30, 30, 29, 30, 30, 30],
                    2086: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30],
                    2087: [0, 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30],
                    2088: [0, 30, 31, 32, 32, 30, 31, 30, 30, 29, 30, 30, 30],
                    2089: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30],
                    2090: [0, 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30]
            ]
    }
    
    func getLast7Days(nepaliDate : String, spliter : String) -> [DateHolder] {
        let items = nepaliDate.componentsSeparatedByString(spliter)
        let engYear = Int(items[0])
        let engMonth = Int(items[1])
        let engDay = Int(items[2])
    
     let startingEngYear = 2013
     let startingEngMonth = 12
     let startingEngDay = 1
     var dayOfWeek = 0 as! Int //Calendar.SUNDAY // 1944/1/1 is Saturday
     let startingNepYear = 2070
     let startingNepMonth = 8
     let startingNepDay = 16
        let calendar = NSCalendar.currentCalendar()
        let currentEngDatecomponents = NSDateComponents()
            currentEngDatecomponents.day = engDay!
            currentEngDatecomponents.month = (engMonth!-1)
            currentEngDatecomponents.year = engYear!
        let CurrentEngDate = calendar.dateFromComponents(currentEngDatecomponents)
        
        let baseEngDateComponents = NSDateComponents()
            baseEngDateComponents.day = startingEngDay
            baseEngDateComponents.month = startingEngMonth-1
            baseEngDateComponents.year = startingEngYear
        
        let baseEngDate = calendar.dateFromComponents(baseEngDateComponents)
        
        let components = calendar.components([.Day], fromDate: baseEngDate!, toDate: CurrentEngDate!, options: [])
        var totalEngDaysCount = components.day as! Int
     
    
     var nepYear = startingNepYear
     var nepMonth = startingNepMonth
     var nepDay = startingNepDay
     var  allCal = [DateHolder]();
    
     var done = false;
     while (totalEngDaysCount != 0) {
    
     var daysInMonth = nepaliMap.objectForKey(nepYear)![nepMonth] as! Int
     nepDay = nepDay + 1 // incrementing nepali day
        
    if (nepDay > daysInMonth) {
     nepMonth = nepMonth + 1;
     nepDay = 1
    }
    if (nepMonth > 12) {
     nepYear = nepYear+1
     nepMonth = 1
    }
    
    dayOfWeek = dayOfWeek + 1 // count the days in terms of 7 days
    if (dayOfWeek > 7) {
     dayOfWeek = 1
    }
    
    let mydate = DateHolder(year : nepYear, month :nepMonth - 1, dayOfMonth : nepDay)
    // 0-11 months requird while nepMonth is 1-12
    
    totalEngDaysCount = totalEngDaysCount - 1
    if (totalEngDaysCount == 0 && !done) {
        totalEngDaysCount = 7 - getNepalCal().component(.Weekday, fromDate: NSDate())
        done = true;
    }
    
    if (allCal.count == 7) {
        allCal.removeAtIndex(0)
    }
     allCal.append(mydate)
    
    }
        return allCal
    }
    
    func getNepalCal() -> NSCalendar{
        let components = NSDateComponents();
        components.timeZone = NSTimeZone(abbreviation: "TZ_NEPAL")
        return components.calendar!
        
    }

    
    
    func convertADToBS(nepaliDate : String, spliter : String) -> DateHolder {
     let items = nepaliDate.componentsSeparatedByString(spliter)
        let engYear = Int(items[0])
        let engMonth = Int(items[1])
        let engDay = Int(items[2])
        
        let startingEngYear = 1943
        let startingEngMonth = 4
        let startingEngDay = 14
        var dayOfWeek = 4 //wednesday // 1944/1/1 is Saturday

        let startingNepYear = 2000
        let startingNepMonth = 1
        let startingNepDay = 1

    
        let calendar = NSCalendar.currentCalendar()
        let currentEngDatecomponents = NSDateComponents()
        currentEngDatecomponents.day = engDay!
        currentEngDatecomponents.month = (engMonth!-1)
        currentEngDatecomponents.year = engYear!
        let CurrentEngDate = calendar.dateFromComponents(currentEngDatecomponents)
        
        let baseEngDateComponents = NSDateComponents()
        baseEngDateComponents.day = startingEngDay
        baseEngDateComponents.month = startingEngMonth-1
        baseEngDateComponents.year = startingEngYear
        
        let baseEngDate = calendar.dateFromComponents(baseEngDateComponents)
        let components = calendar.components([.Day], fromDate: baseEngDate!, toDate: CurrentEngDate!, options: [])
        var totalEngDaysCount = components.day
        var nepYear = startingNepYear
        var nepMonth = startingNepMonth
        var nepDay = startingNepDay

    while (totalEngDaysCount != 0) {
    let daysInMonth = nepaliMap.objectForKey(nepYear)![nepMonth] as! Int
    nepDay = nepDay + 1;// incrementing nepali day
    if (nepDay > daysInMonth) {
    nepMonth = nepMonth + 1
    nepDay = 1
    }
    if (nepMonth > 12) {
    nepYear = nepYear + 1
    nepMonth = 1
    }
    
    dayOfWeek = dayOfWeek + 1 // count the days in terms of 7 days
    if (dayOfWeek > 7) {
    dayOfWeek = 1
    }
    
        totalEngDaysCount = totalEngDaysCount - 1
    }
    print("DateCOnverter, nepyear =\(nepYear) nepMonth = \(nepMonth) nepDay = \(nepDay) dayofweek = \(dayOfWeek)");
    return DateHolder(year : nepYear, month: nepMonth-1, dayOfMonth : nepDay, dayOfWeek : dayOfWeek); //original
    }
    
    
func convertBSToAD(nepaliDate : String, splitter : String) -> DateHolder {
    let items = nepaliDate.componentsSeparatedByString(splitter)
    let nepYear = Int(items[0])
    let nepMonth = Int(items[1])
    let nepDay = Int(items[2])
    print("DateConverter :: year = \(nepYear), month = \(nepMonth) , days = \(nepDay)")
    // standard nepali date
    let startingNepYear = 2000
    let startingNepMonth = 1
    let startingNepDay = 1
    var dayOfWeek = 4 // 2000/1/1 is Wednesday
    
        // standard english date
    let startingEngYear = 1943
    let startingEngMonth = 4
    let startingEngDay = 14
    
    var totalNepDaysCount = 0 
    
    // count total days in-terms of year
    for i in startingNepYear..<nepYear!{
    for j in 1..<13 {
      let daysCount = nepaliMap.objectForKey(i)![j] as! Int
      totalNepDaysCount += daysCount
        //print("DateConverter :: daysCount = \(daysCount), totalNepDaysCount = \(totalNepDaysCount)")
     }
    }
    print("DateConverter :: BSToAD totalNepDaysCount = \(totalNepDaysCount)")

    
    // count total days in-terms of month
    for j in startingNepMonth..<nepMonth! {
//       totalNepDaysCount += nepaliMap.ob(nepYear)[j]
        let daysCount = nepaliMap.objectForKey(nepYear!)![j] as! Int
        print("DateConverter :: daysCount = \(daysCount)")
        totalNepDaysCount += daysCount
    }
    
//    for (int j = startingNepMonth; j < nepMonth; j++) {
//        totalNepDaysCount += nepaliMap.get(nepYear)[j];
//    }
    print("DateConverter :: BSToAD totalNepDaysCount = \(totalNepDaysCount)")

    
    // count total days in-terms of date
    totalNepDaysCount += nepDay! - startingNepDay
    
    print("DateConverter :: BSToAD totalNepDaysCount = \(totalNepDaysCount)")
       let daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
       let daysInMonthOfLeapYear = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    // calculation of equivalent english date...
    var engYear = startingEngYear
    var engMonth = startingEngMonth
    var engDay = startingEngDay
    var endDayOfMonth = 0
    while (totalNepDaysCount != 0) {
        if (isLeapYear(engYear)) {
            endDayOfMonth = daysInMonthOfLeapYear[engMonth]
        } else {
            endDayOfMonth = daysInMonth[engMonth]
        }
        engDay = engDay + 1
        dayOfWeek = dayOfWeek + 1
        if (engDay > endDayOfMonth) {
            engMonth = engMonth + 1
            engDay = 1
            if (engMonth > 12) {
                engYear = engYear + 1
                engMonth = 1
            }
        }
        if (dayOfWeek > 7) {
            dayOfWeek = 1
        }
        totalNepDaysCount = totalNepDaysCount - 1
    }
    
    print("DateConverter :: engYear = \(engYear)")
        var monthCheck = String()
        if(engMonth < 10){
        monthCheck = "0"}
        else{
        monthCheck = "\(engMonth)"
      }
    var dayCheck = String()
    if(engDay < 10){
        dayCheck = "0"}
        else{
        dayCheck = "\(engDay)"}
    print("\(engYear)-\(monthCheck)-\(dayCheck)A.D.")
    return DateHolder(year : engYear, month : engMonth, dayOfMonth: engDay)
    }
    
    func isLeapYear(year : Int) -> Bool {
        if (year % 100 == 0) {
        return year % 400 == 0
        } else {
            return year % 4 == 0
        }
    }
    
}

