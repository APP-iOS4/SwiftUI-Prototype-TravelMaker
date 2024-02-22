# TravelMaker
## 프로젝트 소개
멋쟁이 사자처럼 앱스쿨:iOS 4기

7회차 실습조 LAB2 TravelMaker 프로토타입 개발

## 개발 기간

- 총 개발 기간 : 2024년 02월 19일 ~ 22일 (총 4일)

- 기획 및 프로토타입 제작 : 1일

- 개발 및 피드백 : 3일



## 팀원 소개
|          |  &nbsp; 이름 &nbsp; &nbsp; &nbsp;   | GitHub      | 프로젝트 소감 |
| -------- | ------- | ----------- | ---------- |
| <img src="https://avatars.githubusercontent.com/u/103730885?v=4" alt="drawing" width="100"/> |  김기표 &nbsp;  | [@rlvy0513](https://github.com/rlvy0513)   | 프로토타입이지만 SwiftUI를 사용한 첫 프로젝트를 끝내 힘들었지만 즐거운 시간이었습니다 ! |
| <img src="https://cdn.discordapp.com/attachments/1169156921736056833/1210121783722770452/IMG_1728-crop.JPG?ex=65e968bc&is=65d6f3bc&hm=2e288b93deda6605a0c836024e1397a14756111f3ee250b1a07fe01d89bb2dc1&" alt="drawing" width="100"/> | 이우석 &nbsp; | [@wl00ie19](https://github.com/wl00ie19) | 프로토타이핑을 통해 SwiftUI에서의 모델과 뷰를 만드는 방법들을 응용하고, 문제상황에 대처하는 방법을 배울 수 있는 유익한 시간이었습니다. |
| <img src="https://media.discordapp.net/attachments/1169156921736056833/1210113063022231562/UDI_memoji.png?ex=65e9609d&is=65d6eb9d&hm=c10743a94ea0cdf3d5b733b69f5e9cb83904ba278b3dfa88d95635a0f93d5972&=" alt="drawing" width="100"/> | 전유진 &nbsp; | [@UDI94](https://github.com/UDI94) | SwiftUI를 적용하여 UI를 구성하고 프로토타입을 구현하여 각각의 모델 데이터를 UI에 바인딩하여 구현하는 법을 알 수 있었습니다. <br> 다음 구현시에는 좀 더 페르소나를 중심으로 기획을 하여 이해도 높은 앱을 구현하고 싶습니다. |
| <img src="https://github.com/APP-iOS4/SwiftUI-Prototype-TravelMaker/assets/80569323/0eb9d006-1699-446d-a34d-096248d2b61c" alt="drawing" width="100"/> | 최주리 &nbsp; | [@juri123123](https://github.com/juri123123)  | NavigationLink에 대한 이해와 fullscreenCover에 대한 공부를 할 수 있었습니다. 많은 교훈을 얻은 프로젝트였습니다! |
<br>

## ADS
* 여행객이 현지인을 통해서 여행 정보를 제공받을 수 있는 앱
* 여행을 준비할 때 해당 지역에 대해 궁금한 부분을 검증된 현지 가이드에게 직접 물어보고 짤 수 있는 앱
* 광고성 게시물이 아닌 자신의 취향에 맞게 여행을 원하는 사람을 위한 앱
* 취향에 따라 가이드와 동행하고 싶지 않은 여행객도 현지인이 짠 스케줄을 받아 충분한 여행을 즐길 수 있는 앱


## 개발 및 배포 환경
- Xcode 15.1
- IOS 17.2

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
- 메세지 작성 시 키보드 올라왔을 때 화면도 함께 올라가는 기능
- 예약 시 상세 가이드 내역 확인 기능 추가
  - 상세한 여행지 목록, 음식점 목록등

