//
//  TravelModelStore.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

class TravelModelStore {
    var travelStore: [TravelModel]
    
    let users = UserModelStore()
    
    init() {
        travelStore = [
            TravelModel(title: "제주도 전역 식물원 탐방", imageName: ["yeomiji"], author: users.userStore.first!, price: 50000, location: "제주특별자치도", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.", tag: .photo),
        ]
    }
}
