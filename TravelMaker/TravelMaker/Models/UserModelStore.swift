//
//  UserModelStore.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

class UserModelStore {
    var userStore: [UserModel]
    
    init() {
        userStore = [
            UserModel(name: "홍길동", profileImage: "subway", gender: "남성", age: 30, location: "제주도", language: "한국어, English", isGuide: true, guideDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna."),
            UserModel(name: "이몽룡", profileImage: "subway", gender: "남성", age: 30, location: "부산광역시", language: "한국어, English, 日本語", isGuide: true, guideDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna."),
            UserModel(name: "성춘향", profileImage: "subway", gender: "남성", age: 30, location: "서울특별시", language: "한국어, 中国话", isGuide: false, guideDescription: nil)
        ]
    }
}
