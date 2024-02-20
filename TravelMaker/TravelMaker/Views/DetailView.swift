//
//  DetailView.swift
//  TravelMaker
//
//  Created by YUJIN JEON on 2/20/24.
//

import SwiftUI

struct DetailView: View {
    let userStore = UserModelStore().userStore
    let travel = TravelModelStore().travelStore.first!
    @State var selectedDate: Date = Date()
    @State var adultNumber: Int = 0
    @State var childNumber: Int = 0
    @State var babyNumber: Int = 0
    @State var buttonChecked: Bool = false
    @State var isPresented: Bool = false

    var body: some View {
        
        ScrollView{
            //이미지 부분
            Image("yeomiji")
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
                    HStack{
                        VStack{
                            Text(travel.author.name + " 님의 여행 가이드")
                                .font(.title2)
                                .padding(.top, 20.0)
                            
                            Text("사용가능한 언어:   " + travel.author.language.map{$0}.joined(separator: ","))
                        }
                        Spacer()
                        Image(travel.author.profileImage)
                            .resizable()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: 60.0, maxHeight: 60.0, alignment: .center)
                            .padding(.top, 20.0)
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
                                        .frame(width: 30.0, height: 30.0)
                                }
                                Spacer()
                                Text("\(adultNumber)")
                                    .font(.title3)
                                    .foregroundStyle(Color.tmBlack)
                                Spacer()
                                Button{
                                    adultNumber += 1
                                    
                                } label: {
                                    Image(systemName: "plus.circle")
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)

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
                                        .frame(width: 30.0, height: 30.0)
                                }
                                Spacer()
                                Text("\(childNumber)")
                                    .font(.title3)
                                    .foregroundStyle(Color.tmBlack)
                                Spacer()
                                Button{
                                    childNumber += 1
                                    
                                } label: {
                                    Image(systemName: "plus.circle")
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)

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
                                        .frame(width: 30.0, height: 30.0)
                                }
                                Spacer()
                                Text("\(babyNumber)")
                                    .font(.title3)
                                    .foregroundStyle(Color.tmBlack)
                                Spacer()
                                Button{
                                    babyNumber += 1
                                    
                                } label: {
                                    Image(systemName: "plus.circle")
                                        .resizable()
                                        .frame(width: 30.0, height: 30.0)

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
                        Text("가이드 상품선택")
                            .font(.title)
                            .padding(.top, 20.0)
                        Button{
                            buttonChecked.toggle()
                        }label:{
                            HStack {
                                Image(travel.author.profileImage)
                                    .resizable()
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: 60.0, maxHeight: 60.0, alignment: .center)
                                
                                VStack(alignment: .leading){
                                    Text(travel.author.name + " 님의 여행 가이드")
                                        .font(.title3)
                                    Text("\(travel.price ?? 0)")
                                }
                                .foregroundStyle(Color.tmBlack)
                                Spacer()
                                if buttonChecked {
                                    Image(systemName: "checkmark.circle")
                                        .resizable()
                                        .frame(maxWidth: 30.0, maxHeight: 30.0, alignment: .center)
                                        .padding(.trailing, 10.0)
                                        .foregroundStyle(Color.green)
                                }
                            }
                        }
                        HStack{
                            Text("총 금액")
                                .font(.title)
                            Spacer()
                            if buttonChecked {
                                Text("\(travel.price ?? 0) 원")
                                .font(.title)
                            }
                        }
                        .padding(.top, 30.0)
                   
                    }
                    Button("예약하기") {
                        if buttonChecked {
                            self.isPresented.toggle()
                        }
                    }
                    .sheet(isPresented: $isPresented) {
                        ReservationSuccess()
                    }
                }
                .padding(.bottom, 20.0)
                Divider()
                Section{
                    
                    
                }
                
            }
            .padding(20.0)
            
            
        }
    }
}

#Preview {
    DetailView()
}
