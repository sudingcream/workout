//
//  Alarm.swift
//  workout
//
//  Created by suding on 2021/02/20.
//

import Foundation

class Alarm{
    var content: String
    var insertDate: Date
    
    init(content: String){
        self.content = content
        insertDate = Date()
    }
    
    static var dummyAlarmList = [
        Alarm(content: "오전 9:00 예약이 완료되었습니다"),
        Alarm(content: "자주가는 헬스장으로 등록 완료!👍❤️")
    ]
}
