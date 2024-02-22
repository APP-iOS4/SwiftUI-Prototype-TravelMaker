//
//  SearchBar.swift
//  TravelMaker
//
//  Created by 최주리 on 2024/02/20.
//

import SwiftUI

struct SearchBar: View {
    
    @State var searchText: String = ""
    @State var isEditing: Bool = false
    
    var body: some View {
        //MARK: - Search Bar
        HStack {
            
            TextField("여행하고 싶은 장소를 입력해주세요.", text: $searchText)
                .padding(15)
                .padding(.horizontal, 25)
                .background(Color.white)
                .cornerRadius(5)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.tmBlue2)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.searchText = ""
                                isEditing = false
                            }, label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundStyle(.tmGray)
                                    .padding(.trailing, 8)
                            })
                        }
                        
                    }//HStack
                )
                .padding(.horizontal, 10)
                .overlay {
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(.tmBlue2, lineWidth: 1.0)
                }
                .onTapGesture {
                    self.isEditing = true
                }
        }//HStack
        .padding(.trailing, 5)
        .padding(.top, 10)
        .padding(.leading, 5)
        
    }
    
}

#Preview {
    SearchBar()
}
