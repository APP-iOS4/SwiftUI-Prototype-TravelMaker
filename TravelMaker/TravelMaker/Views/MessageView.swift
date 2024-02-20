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
                    NavigationLink{
                        MessageDetailView(messageModel: message)
                    } label: {
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
