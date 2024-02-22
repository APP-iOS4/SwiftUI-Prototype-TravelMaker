//
//  GuideDetailView.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/22/24.
//

import SwiftUI

struct GuideDetailView: View {
    let guide: UserModel
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                HStack{
                    Image(guide.profileImage)
                        .resizable()
                        .frame(maxWidth: 60, maxHeight: 60)
                        .clipShape(Circle())
                    Spacer()
                    Text(guide.name)
                        .font(.title2)
                    Spacer()
                    NavigationLink{
                        MessageView()
                    }label: {
                        Image(systemName: "message")
                        Text("가이드에게 문의하기")
                    }
                }
                
                Text("가이드 소개")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                Text(guide.guideDescription ?? "")
                
            }
           
            
        }
       
    }
}

#Preview {
    GuideDetailView(guide: TravelModelStore().travelStore[0].author)
}
