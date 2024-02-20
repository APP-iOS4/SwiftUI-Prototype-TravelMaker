//
//  MessageDetailView.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import SwiftUI

struct MessageDetailView: View {
    var messageModel: MessageModel
    @State var write: String = ""
    
    var body: some View {
        VStack(spacing: 0){
            ScrollView{
                LazyVStack(alignment: .leading){
                    ForEach(messageModel.messages) { message in
                        VStack(alignment: .leading){
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                    .foregroundStyle(.tmBlue1)
                                Text("\(message.message)")
                                    .foregroundStyle(.tmBlack)
                                    .padding(10)
                            }
                            .frame(width: 250)
                            HStack{
                                Image(messageModel.user.profileImage)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(height: 30)
                                
                                Text(message.date)
                                    .font(.subheadline)
                                    .foregroundStyle(.tmGray)
                            }
                            
                        }
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .id(message)
                    }
                }
            }
            .defaultScrollAnchor(.bottom)
            
            Divider()
            
            HStack{
                TextField("메시지를 입력하세요", text: $write)
                Button{
                    write = ""
                } label: {
                    ButtonBackground(text: "전송")
                }
                .frame(width: 70, height: 50)
            }
            .frame(height: 50)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 10))
        }
        .navigationTitle("\(messageModel.user.name)님의 메시지")
        .navigationBarTitleDisplayMode(.inline)
    }
}
