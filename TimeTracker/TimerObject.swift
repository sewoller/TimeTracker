//
//  TimerObject.swift
//  TimeTracker
//
//  Created by Serena W on 3/13/24.
//
// https://stackoverflow.com/questions/44731739/creating-a-stopwatch-in-swift


import Foundation
import SwiftUI

class TimerObject{
    var name = ""
    var timer = Timer()
    var timer_active = Bool()
    var seconds = 0
    
//    func init_timer_ui(){
//        RoundedRectangle(cornerRadius: 25)
//            .fill(.green)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 75, alignment: .center)
//    }
    
    func create_timer(name_input: String){
        name = name_input
        timer_active = false
    }
    
    func start_timer(){
        timer_active = true
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: (#selector(update_timer)),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func update_timer(){
        seconds += 1
        // update text -- activeTimer.text = timeString(time: TimeInterval(seconds))
    }
    
    func stop_timer(){
        timer_active = false
        timer.invalidate()
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i.%02i", hours, minutes, seconds)
    }

}

