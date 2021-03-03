//
//  loginView.swift
//  workout
//
//  Created by suding on 2021/02/23.
//

import Foundation

final class UserModel{
    struct User {
        var email: String
        var password: String
    }
    
    var users: [User] = [
        User(email: "abc123@naver.com", password: "sujin123"),
        User(email: "def456@gmail.com", password: "sujin456")
    ]
    
    // 아이디 형식 검사
    func isValidEmail(id: String) -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        // @앞에 알파벳 숫자, 특수문자가 포함될수 있고, @뒤에는 알파벳, 숫자 그리고 . 뒤에는 알파벳 2자리 이상
        let emailTest = NSPredicate(format: "SELF MATHCES %@", emailRegEx)
        return emailTest.evaluate(with: id)
    }
    
    // 비밀번호 형식 검사
    func isValidPassword(pwd: String) -> Bool{
        let passwordRegEx = "^[a-zA-Z0-9]{8,}$" // 소문자, 대문자, 숫자 8자리 이상
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        return passwordTest.evaluate(with: pwd)
    }
    
}// end class
