//
//  MessageModel.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

struct MessageModel: Identifiable {
    var id: UUID = UUID()
    let user: UserModel
    let messages: [SingleMessageModel]
}

struct SingleMessageModel: Identifiable, Hashable {
    var id: UUID = UUID()
    var message: String
    var date: String
}
