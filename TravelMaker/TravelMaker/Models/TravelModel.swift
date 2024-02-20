//
//  TravelModel.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

struct TravelModel: Identifiable{
    let id: UUID = UUID()
    let title: String
    let imageName: String
    let author: UserModel
    var guideProfileImage: String
    let price: Int?
    let location: String
    let description: String
    let tag: Tag
}

enum Tag: CaseIterable {
    case food
    case art
    case leasure
    case photo
    case culture
    case nature
}
