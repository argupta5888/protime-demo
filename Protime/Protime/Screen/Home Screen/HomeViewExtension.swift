//
//  HomeViewExtension.swift
//  Protime
//
//  Created by Ashok Gupta on 06/08/24.
//

import Foundation

extension HomeView {
    
    class ViewModel : Observable {
        
        func getDays(for month: Date) -> [Date] {
            let cal = Calendar.current
            
            let monthRange = cal.range(of: .day, in: .month, for: month)!
            let component = cal.dateComponents([.year, .month], from: month)
            var date = cal.date(from: component)!
            
            var dates: [Date] = []
            for _ in monthRange {
                dates.append(date)
                date = cal.date(byAdding: .day, value: 1, to: date)!
                
            }
            return dates
            
        }
    }
}
