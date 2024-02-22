//
//  ReviewView.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/22/24.
//

import SwiftUI

struct ReviewView: View {
    var name: String
    @State var reviewScore: Int = 0
    @State var reviewText: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            
            HStack{
                Text("상품명")
                    .font(.headline)
                Spacer()
                Text("\(name)")
            }
            
            Divider()
            
            HStack{
                Text("평점")
                    .font(.headline)
                Spacer()
                Button{
                    reviewScore = 1
                } label: {
                    reviewScore >= 1 ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
                .foregroundStyle(reviewScore >= 1 ? Color.yellow : Color.tmGray)
                
                Button{
                    reviewScore = 2
                } label: {
                    reviewScore >= 2 ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
                .foregroundStyle(reviewScore >= 2 ? Color.yellow : Color.tmGray)
                
                Button{
                    reviewScore = 3
                } label: {
                    reviewScore >= 3 ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
                .foregroundStyle(reviewScore >= 3 ? Color.yellow : Color.tmGray)
                
                Button{
                    reviewScore = 4
                } label: {
                    reviewScore >= 4 ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
                .foregroundStyle(reviewScore >= 4 ? Color.yellow : Color.tmGray)
                
                Button{
                    reviewScore = 5
                } label: {
                    reviewScore >= 5 ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
                .foregroundStyle(reviewScore >= 5 ? Color.yellow : Color.tmGray)
            }
            
            Divider()
            
            VStack(alignment: .leading){
                Text("리뷰")
                    .font(.headline)
                TextEditor(text: $reviewText)
            }
            
            Button{
                
            } label: {
                ButtonBackground(text: "리뷰 작성")
            }
        }.padding()
    }
}

#Preview {
    ReviewView(name: "제주도")
}
