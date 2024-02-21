//
//  MessageView.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import SwiftUI

struct MessageView: View {
    let messageStore = MessageModelStore()
    
    var body: some View {
        NavigationStack{
            List{
                
                ForEach(messageStore.messages){ message in
                    ZStack {
                        NavigationLink{
                            MessageDetailView(messageModel: message)
                        } label: {
                            EmptyView()
                        }
                        .opacity(0.0)
                        HStack{
                            Image(message.user.profileImage)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(height: 50)
                            
                            VStack(alignment: .leading){
                                Text("\(message.user.name)")
                                    .font(.headline)
                                    .foregroundStyle(.tmBlack)
                                Text(message.messages.last?.message ?? "")
                                    .lineLimit(1)
                                    .font(.subheadline)
                                    .foregroundStyle(.tmGray)
                            }
                            
                            Image(systemName: "1.circle.fill")
                                .foregroundColor(.tmYellow2)
                                .font(.system(size: 23))
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("메시지")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    MessageView()
}
