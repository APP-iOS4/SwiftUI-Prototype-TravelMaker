//
//  DetailView.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/20/24.
//

import SwiftUI

struct DetailView: View {
    let userStore = UserModelStore().userStore
    var travel:  TravelModel

    @State var selectedDate: Date = Date()
    @State var adultNumber: Int = 0
    @State var childNumber: Int = 0
    @State var babyNumber: Int = 0
    @State var button1Checked: Bool = false
    @State var button2Checked: Bool = false
    
    @Binding var isShowing: Bool

    var body: some View {
        NavigationStack{
            ScrollView{
                //이미지 부분
                Image(travel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                //전체 바디 Vstack
                VStack(alignment: .leading){
                    //제목섹션
                    Section{
                        Text(travel.title)
                            .font(.title)
                    }
                    Divider()
                    //프로필 섹션
                    Section{
                        VStack{
                            HStack{
                                VStack (alignment: .leading){
                                    Text(travel.author.name + " 메이커와의 여행")
                                        .font(.title2)
                                        .padding(.top, 20.0)
                                    
                                    Text("사용가능한 언어: " + travel.author.language)
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 20)
                                            .foregroundStyle(.yellow)
                                        Text("5.0")
                                        
                                        Text("현지 거주 10년")
                                            .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
                                            .background(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)).foregroundStyle(.tmYellow2))
                                        
                                    }
                                }
                                Spacer()
                                
                                Image(travel.author.profileImage)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(maxWidth: 60.0, maxHeight: 60.0, alignment: .center)
                                    .padding(.top, 20.0)
                                
                            }
                            
                            HStack{
                                NavigationLink{
                                    ProfileView()
                                } label: {
                                    ButtonWhite(text: "여행 메이커 프로필")
                                }
                                NavigationLink{
                                    MessageDetailView(messageModel: MessageModelStore().messages.first!)
                                } label: {
                                    ButtonBackground(text: "1:1 채팅")
                                }
                            }
                            
                        }
                    }
                    
                    Section {
                        VStack(alignment: .leading){
                            Text("프로그램")
                                .font(.title)
                            Text(travel.description)
                        }
                    }
                    .padding(.vertical, 20.0)
                    
                    Section {
                        Text("날짜선택")
                            .font(.title)
                        Text("예약 가능한 날짜 선택")
                        DatePicker("", selection: $selectedDate, displayedComponents: .date)
                            .datePickerStyle(GraphicalDatePickerStyle())
                    }
                    Divider()
                    Section {
                        VStack(alignment: .leading){
                            Text("인원선택")
                                .font(.title)
                                .padding(.bottom, 20.0)
                            HStack {
                                VStack(alignment: .leading){
                                    Text("어른")
                                        .font(.title2)
                                    Text("13세 이상 ")
                                }
                                Spacer()
                                Section{
                                    Button{
                                        if adultNumber > 0 {
                                            adultNumber -= 1
                                        }
                                    } label: {
                                        Image(systemName: "minus.circle")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    
                                    Text("\(adultNumber)")
                                        .font(.title3)
                                        .foregroundStyle(Color.tmBlack)
                                        .frame(width: 100)
                                    
                                    Button{
                                        if adultNumber < 20{
                                            adultNumber += 1
                                        }
                                    } label: {
                                        Image(systemName: "plus.circle")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal)
                            HStack {
                                VStack(alignment: .leading){
                                    Text("어린이")
                                        .font(.title2)
                                    Text("2 - 12세   ")
                                }
                                Spacer()
                                Section{
                                    Button{
                                        if childNumber > 0 {
                                            childNumber -= 1
                                        }
                                    } label: {
                                        Image(systemName: "minus.circle")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    
                                    Text("\(childNumber)")
                                        .font(.title3)
                                        .foregroundStyle(Color.tmBlack)
                                        .frame(width: 100)
                                    
                                    Button{
                                        if childNumber < 20{
                                            childNumber += 1
                                        }
                                        
                                    } label: {
                                        Image(systemName: "plus.circle")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal)
                            
                            HStack {
                                VStack(alignment: .leading){
                                    Text("유아")
                                        .font(.title2)
                                    Text("2세 미만   ")
                                }
                                Spacer()
                                Section{
                                    Button{
                                        if  babyNumber > 0 {
                                            babyNumber -= 1
                                        }
                                    } label: {
                                        Image(systemName: "minus.circle")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                    }
                                    
                                    Text("\(babyNumber)")
                                        .font(.title3)
                                        .foregroundStyle(Color.tmBlack)
                                        .frame(width: 100)
                                    
                                    Button{
                                        if babyNumber < 20{
                                            babyNumber += 1
                                        }
                                        
                                    } label: {
                                        Image(systemName: "plus.circle")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal)
                            
                        }
                    }
                    .padding(.vertical, 20.0)
                    Divider()
                    Section{
                        VStack(alignment: .leading){
                            Text("여행 상품 선택")
                                .font(.title)
                                .padding(.top, 20.0)
                            Button{
                                button1Checked.toggle()
                            }label:{
                                HStack {
                                    Image(travel.author.profileImage)
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(maxWidth: 60.0, maxHeight: 60.0, alignment: .center)
                                    
                                    VStack(alignment: .leading){
                                        Text("\(travel.author.name) 메이커와의 여행")
                                            .font(.title3)
                                        Text("\(travel.price ?? 0)")
                                    }
                                    .foregroundStyle(Color.tmBlack)
                                    Spacer()
                                    Image(systemName: "checkmark.circle")
                                        .resizable()
                                        .frame(maxWidth: 30.0, maxHeight: 30.0, alignment: .center)
                                        .padding(.trailing, 10.0)
                                        .foregroundStyle(button1Checked ? Color.green : Color(UIColor.systemGray5))
                                }
                            }
                            Button{
                                button2Checked.toggle()
                            }label:{
                                HStack {
                                    Image(travel.author.profileImage)
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(maxWidth: 60.0, maxHeight: 60.0, alignment: .center)
                                    
                                    VStack(alignment: .leading){
                                        Text("\(travel.author.name) 메이커의 일정표 제공")
                                            .font(.title3)
                                        Text("\(5000)")
                                    }
                                    .foregroundStyle(Color.tmBlack)
                                    Spacer()
                                    Image(systemName: "checkmark.circle")
                                        .resizable()
                                        .frame(maxWidth: 30.0, maxHeight: 30.0, alignment: .center)
                                        .padding(.trailing, 10.0)
                                        .foregroundStyle(button2Checked ? Color.green : Color(UIColor.systemGray5))
                                }
                            }
                            HStack{
                                Text("총 금액")
                                    .font(.title)
                                Spacer()
                                if button1Checked && button2Checked {
                                    Text("\((travel.price ?? 0) + 5000) 원")
                                        .font(.title)
                                } else if button2Checked {
                                    Text("\(5000) 원")
                                        .font(.title)
                                } else if button1Checked {
                                    Text("\(travel.price ?? 0) 원")
                                        .font(.title)
                                }
                            }
                            .padding(.top, 30.0)
                            
                        }
                        if button1Checked || button2Checked {
                            NavigationLink{
                               
                                ReservationSuccess(isShowing: $isShowing)
                                
                            } label: {
                                ButtonBackground(text: "예약하기")
                            }
                            
                        }
                        
                    }
                    .padding(.bottom, 20.0)
                    Divider()
                    Section{
                        
                        Rectangle()
                            .frame(width: 0, height: 50)
                    }
                    
                }
                .padding(20.0)
                
            }
            // .ignoresSafeArea()
            .toolbar{
                if isShowing{
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            isShowing.toggle()
                        } label: {
                            Label("닫기", systemImage: "chevron.backward")
                            
                        }
                        .foregroundStyle(Color.accentColor)
                    }
                }
            }
        }
        
    }
}
