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
    @State var sentList: [SingleMessageModel] = []
    
    var body: some View {
        VStack(spacing: 0){
            ScrollView{
                
                LazyVStack{
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
                                    NavigationLink(destination: ProfileView(), label: {
                                        Image(messageModel.user.profileImage)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .frame(height: 30)
                                    })
                                    
                                    
                                    Text(message.date)
                                        .font(.subheadline)
                                        .foregroundStyle(.tmGray)
                                }
                                
                            }
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                            
                        }
                    }
                    LazyVStack(alignment: .trailing){
                        ForEach(sentList, id: \.self) { message in
                            VStack(alignment: .trailing){
                                ZStack(alignment: .leading){
                                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                        .foregroundStyle(.tmYellow2)
                                    Text("\(message.message)")
                                        .foregroundStyle(.tmBlack)
                                        .padding(10)
                                }
                                .frame(width: 250)
                                
                                Text("\(message.date)")
                                    .font(.subheadline)
                                    .foregroundStyle(.tmGray)
                            }
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                            
                        }
                    }
                    VStack{
                        Text("주의사항")
                            .font(.subheadline)
                            .foregroundStyle(.red)
                        Text("채팅에서 욕설이나 폭언, 성적 수치심을 주는 행위를 하면 이용이 정지되거나\n관련 법령에 따라 처벌받을 수 있습니다.")
                            .font(.caption)
                            .foregroundStyle(.tmGray)
                    }.padding(10)
                }
            }
            .defaultScrollAnchor(.bottom)
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
            
            Divider()
            
            HStack{
                TextField("메시지를 입력하세요", text: $write, axis: .vertical)
                Button{
                    if !write.isEmpty {
                        let date = Date()
                        
                        let formatter = DateFormatter()
                        formatter.dateFormat = "YYYY/M/dd HH:mm"
                        
                        let dateFormat: String = formatter.string(from: date)
                        
                        sentList.append(SingleMessageModel(message: write, date: dateFormat))
                    }
                    
                    
                    write = ""
                } label: {
                    ZStack{
                        RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                            .foregroundStyle(.tmYellow2)
                        Text("전송")
                            .foregroundStyle(.tmBlack)
                    }
                    .frame(height: 40)
                }
                .frame(width: 70, height: 40)
            }
            .frame(height: 40)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 10))
        }
        .navigationTitle("\(messageModel.user.name)님의 메시지")
        .navigationBarTitleDisplayMode(.inline)
    }
}

