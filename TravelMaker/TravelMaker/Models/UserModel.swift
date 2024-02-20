//
//  UserModel.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let profileImage: String
    let gender: String
    let location: String
    let language: [String]
    let isGuide: Bool
}
