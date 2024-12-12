//
//  TimerModel.swift
//  30. SwiftUI data flow
//
//  Created by Despo on 11.12.24.
//

import SwiftUI

struct TimerModel: Identifiable, Codable {
    var id = UUID()
    var name: String
    var duration: TimeInterval
    let defaultDuration: TimeInterval
    var isStarted: Bool = false
    var isPaused: Bool = false
    
    func formatTime(from seconds: TimeInterval) -> String {
        let totalSeconds = Int(seconds)
        let hours = totalSeconds / 3600
        let minutes = (totalSeconds % 3600) / 60
        let secs = totalSeconds % 60
        
        return String(format: "%02d:%02d:%02d", hours, minutes, secs)
    }
}
