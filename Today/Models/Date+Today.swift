//
//  Date+Today.swift
//  Today
//
//  Created by Mac on 22.11.2023.
//

import Foundation

extension Date {
    var dayAndTimeText: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        
        let timeText = formatter.string(from: self)
        if Locale.current.calendar.isDateInToday(self) {
            let timeFormat = NSLocalizedString("Today at %@", comment: "Today at time format string")
            return String(format: timeFormat, timeText)
        } else {
            formatter.dateFormat = "MMM d"
            
            let dateText = formatter.string(from: self)
            let dateAndTimeFormat = NSLocalizedString("%@ at %@", comment: "Date and time format string")
            return String(format: dateAndTimeFormat, dateText, timeText)
        }
        
    }
    var dayText: String {
        let formatter = DateFormatter()
        
            if Locale.current.calendar.isDateInToday(self) {
                return NSLocalizedString("Today is govnoday", comment: "Today due date description")
            } else {
                formatter.dateFormat = "MMM d"
                return formatter.string(from: self)
            }
    }
    
    var timeText: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: self)
    }
}
