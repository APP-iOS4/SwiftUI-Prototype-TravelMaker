//
//  ResevationeDetailView.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/21/24.
//

import SwiftUI

struct ResevationDetailView: View {
    let userStore = UserModelStore().userStore
    var travel: TravelModel
    
    @State var isShowing: Bool = false
    var body: some View {
        NavigationStack{
            
            List{
                VStack(alignment: .leading){
                    Image(travel.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxHeight: 150.0)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    NavigationLink {
                        DetailView(travel: travel, isShowing: $isShowing)
                    } label: {
                        VStack(alignment: .leading){
                            Text(travel.title)
                                .foregroundStyle(Color.tmBlack)
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("\(travel.author.name) 메이커와의 여행")
                            
                        }
                    }
                    
                }
                .padding()
                VStack(alignment: .leading){
                    
                    Text("결제 금액 : 200,000원")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding(.bottom, 5)
                    Text("예약번호 :  29138317572")
                    Text("예약날짜 :  2024 - 03 - 01")
                        .padding(.bottom, 5)
                    Divider()
                    Section{
                        Text("취소 및 환불 규정")
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 10.0)
                        Text("취소규정")
                            .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
                            .background(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)).foregroundStyle(.tmYellow2))
                        Text("현재시점 기준, 예상취소 수수료 12,253원입니다.")
                            .padding(.bottom, 5)
                        Text("환불규정")
                            .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
                            .background(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)).foregroundStyle(.tmBlue2))
                        Text("- 예약 완료 후, 해당 상품을 환불할 수 없습니다.")
                        Text("- 예약 후 날짜 변경 불가")

                        
                        
                    }
                }
                .padding()
                .navigationTitle("예약 확정 내역")

            }
            .listStyle(.plain)
        }
        
        
    }
    
}

