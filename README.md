# TravelMaker
## 프로젝트 소개
멋쟁이 사자처럼 앱스쿨:iOS 4기

7회차 실습조 LAB2 TravelMaker 프로토타입 개발

## 2조 조원이름
- 김기표 [@rlvy0513](https://github.com/rlvy0513)
######
- 이우석 [@wl00ie19](https://github.com/wl00ie19)
######
- 전유진 [@UDI94](https://github.com/UDI94)
######
- 최주리 [@juri123123](https://github.com/juri123123)

## ADS
* 여행객은 현지인을 통해서 여행 정보를 제공받을 수 있는 앱
* 여행을 준비할 때 해당 지역에 대해 궁금한 부분을 검증된 현지 가이드에게 직접 물어보고 짤 수 있는 앱
* 광고성 게시물이 아닌 자신의 취향에 맞게 여행을 원하는 사람을 위한 앱


## 개발 및 배포 환경
- Xcode 15.1
- IOS 17.2
- iPhone 15 Pro에 최적화 되어있음

## 실행 방법
 1. Git 프로젝트 Clone.
 2. TravelMaker 디렉토리의 TravelMaker.xcodeproj를 실행
 3. 실행 기기를 iPhone 15 Pro로 변경 후 라이트 모드로 실행

## 실행화면
<img alt="메인화면" src="https://github.com/APP-iOS4/SwiftUI-Prototype-TravelMaker/assets/145957641/8d368d1f-9eb3-473e-9c55-e239340ccddb" width=150px>
<img alt="상세화면" src="https://github.com/APP-iOS4/SwiftUI-Prototype-TravelMaker/assets/145957641/84619e42-0b07-4953-bd80-cb8da875a85a" width=150px>
<img alt="메세지화면" src="https://github.com/APP-iOS4/SwiftUI-Prototype-TravelMaker/assets/145957641/46057dd7-a4da-4dcd-b562-ba04eaa4dea2" width=150px>
<img alt="프로필화면" src="https://github.com/APP-iOS4/SwiftUI-Prototype-TravelMaker/assets/145957641/d764ffcb-7627-4f8f-b213-8a615c3e95aa" width=150px>



## 사용자 프로세스 Flow
![Section 1](https://github.com/APP-iOS4/SwiftUI-Prototype-TravelMaker/assets/145957641/82df1cd0-469c-46cf-9a56-909dd3c8e901)


## 사용자 시나리오

1. 메인 페이지에서 가이드가 올려둔 게시물을 확인할 수 있음 
2. 검색창을 누르고 지역을 검색하면 해당 지역에 관련된 게시물을 확인할 수 있음 (검색기능 미구현)
3. 카테고리를 선택할 수 있음
4. 게시물 중 하나를 누르면 디테일 페이지로 넘어감
5. 1:1 채팅을 누르면 가이드와 1:1채팅으로 넘어감
6. 가이드 프로필를 누르면 가이드 프로필로 넘어감
7. 날짜, 인원수를 선택하고 예약할 수 있음
8. 가이드 상품을 선택하고 예약하기 버튼을 누르면 예약 완료
10. 하단 탭바 MyTravel에서 예약 내역 확인 가능
11. 예약상세 버튼을 누르면 예약 내역 상세 확인 가능
12. 하단 탭바 Message에서 1:1 대화 내역 확인 가능
13. Message에서 상대방 프로필 이미지를 누르면 프로필 확인 가능
14. 하단 탭바 profile에서 본인 프로필 열람
15. profile에서 예약 내역 확인 가능


## 구현 목표
- 현지의 여행 가이드 및 여행 계획을 전문으로 짜는 사람들과 여행자들을 이어주는 아이폰용 앱을 구현
- Xcode에서 Swift 언어와 SwiftUI 프레임워크를 사용하여 제작
- Model과 View를 분리하여 View는 화면에 표시되는 내용을, Model은 앱에서 사용되는 데이터를 담당하도록 함


## 앞으로 구현할 내용
- 예약완료 창에서 홈으로 돌아가는 버튼
- 메세지 작성 시 키보드 올라왔을 때 화면도 함께 올라가는 기능
- 후기 작성 기능 (별점 혹은 평점 시스템 도입)
- 예약 시 상세 가이드 내역 확인 기능 추가
  - 상세한 여행지 목록, 음식점 목록등

