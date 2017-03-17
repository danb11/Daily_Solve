//
//  MyCalendar.swift
//  0316_p2
//
//  Created by Danb on 2017. 3. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

class MyCalendar {
  //  let mycalendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian)
    let cal = Calendar(identifier: Calendar.Identifier.gregorian)
    let caltoday = Calendar.current
    let date = Date()
    let datefmr = DateFormatter()
    
    // 튜플로 현지 날짜 시간
    func today ()->(Int, Int, Int, Int, Int, Int) {
        //  let calendar = Calendar.current
        let yr = caltoday.component(.year, from: date)
        let month = caltoday.component(.month, from: date)
        let day = caltoday.component(.day, from: date)
        let hour = caltoday.component(.hour, from: date)
        let minutes = caltoday.component(.minute, from: date)
        let sec = caltoday.component(.second, from: date)
        return (yr, month, day, hour, minutes, sec)
    }
    
    // String타입 -> Date타입
    func stringToDate(datestr:String) -> Date{
        datefmr.dateFormat = "yyyy-mm-dd"
        let dateFromString = datefmr.date(from: datestr)
        return dateFromString!
    }

    // Int타입 -> Date타입
    func intToDate(yr:Int, month:Int, day:Int) -> Date{
        //let intcal : NSCalendar.Unit = [.year,.month,.day]
        let comp = DateComponents(calendar: cal, year: yr, month: month, day: day)
//        let yr = comp.year
//        let month = comp.month
//        let day = comp.day
        let result = cal.date(from: comp)
        return result!
    }
    
    // 한국 시간으로 변환
    func toKoreaTime(wordTime : Date) -> String {
        datefmr.locale = Locale(identifier: "ko_KR")
        datefmr.timeStyle = .full
        datefmr.dateStyle = .full
        let koreatime = datefmr.string(from: wordTime)
        return koreatime
    }
    
    // 년도&달로 1일 요일 찾기
    func findWeek (year:Int, month:Int) -> String {
        let comp = DateComponents(year: year, month: month, day:1)
        let date = cal.date(from: comp)
        datefmr.dateFormat = "EEE"
        let weekday1 = datefmr.string(from: date!)
        return weekday1
    }
    
}


