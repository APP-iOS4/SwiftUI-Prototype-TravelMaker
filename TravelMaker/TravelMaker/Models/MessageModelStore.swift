//
//  MessageModelStore.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import Foundation

class MessageModelStore {
    var messages: [MessageModel]
    
    let users = UserModelStore()
    
    init(){
        messages = [
            MessageModel(user: users.userStore[0] , messages: [SingleMessageModel(message: "물에 대한 적대감, 하절기, 훈련과 하체 작업 등이 재발할 것으로 예상됩니다.이 모래 잎이 2025년 두 곳에서 농업 안정을 가져올 수 있습니까?작년에 그녀는 그녀의 여동생이기 때문에 그녀의 아버지로부터 음식을 받았습니다. 사실 아내는 지난달에 비해 자신의 성격과 개성에 맞는 완벽한 안경을 쉽게 착용할 수 있었습니다. ", date: "2024/2/17 15:15"), SingleMessageModel(message: "그래서 조금 걷거나 나가 전화를 소유하지 않고, 옆에 부부를 준비하는 데 도움이 풍부한 어머니의 돈은 문학이다. 당신은 월별 휴가에 대해 이야기 할 수 있으며, 이러한 역할은 그 당시처럼 건강에 해로운 관점에서 다른 시스템을 듣고 포함하지만, 어떤 경우에, 갈매기가 합류 할 것이다. 할머니들은 평화로운 장소가 되기를 원했고, 과거의 시간이 흘러가는 이야기들을 표현하는 것은 어려웠습니다. 마치 외모를 신경쓰고 떠나는 것처럼 말이죠. 그리고 또 다른 몰락은 시민 불안으로 인한 것입니다.", date: "2024/2/17 17:17"), SingleMessageModel(message: "위대한 왕과 마요네즈의 카드 게임. 많은 아이들이 문을 열고 싶어하며, 문을 떠날 때는 95번을 바꾸는 것이 항상 중요합니다. 그들의 신성한 명령은 운동선수와 대학의 도움으로 더 많은 강이 흐르도록 하는 것입니다. 그렇지 뭐.그렇지 않고서야 관점이 높은 경보 상태라 필름 구분이 왜 그렇게 어려운 걸까요? 영어 조끼 착용 여부는 다른 곳에서 찾을 수 있습니다.뭐라고요?", date: "2024/2/19 23:45")]),
            MessageModel(user: users.userStore[1] , messages: [SingleMessageModel(message: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.", date: "2024/2/17 12:34"), SingleMessageModel(message: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue.", date: "2024/2/15 12:34"), SingleMessageModel(message: "Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla. Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien.", date: "2024/2/19 11:11"), SingleMessageModel(message: "Etiam at ligula et tellus ullamcorper ultrices. In fermentum, lorem non cursus porttitor, diam urna accumsan lacus, sed interdum wisi nibh nec nisl. Ut tincidunt volutpat urna.", date: "2024/2/19 11:11"),SingleMessageModel(message: "Cras dapibus dapibus nisl. Vestibulum quis dolor a felis congue vehicula. Maecenas pede purus, tristique ac, tempus eget, egestas quis, mauris.", date: "2024/2/19 11:11"),]),
        ]
    }
}
