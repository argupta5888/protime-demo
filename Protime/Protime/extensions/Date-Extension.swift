//
//  DateExtension.swift
//  Protime
//
//  Created by Ashok Gupta on 12/08/24.
//

import Foundation

extension Date {
    var getCurrentMonthStartDate : Date {
        guard let date = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: self)) else {
                fatalError("Unable to fetch current month start date")
        }
        return date
    }
    
    var getCurrentMonthEndDate : Date {
        guard let date = Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: getCurrentMonthStartDate) else {
            fatalError("Unable to fetch current month end date")
        }
        return date
    }
}
