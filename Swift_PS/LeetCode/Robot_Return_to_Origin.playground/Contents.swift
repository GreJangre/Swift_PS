/*
 2D 평면에서 원점 인 위치 (0, 0)에서 시작하는 로봇이 있습니다. 일련의 움직임이 주어지면이 로봇이 움직임을 완료 한 후 (0, 0)에 끝나는 지 판단합니다.
 
 이동 순서는 문자열로 표시되고 문자 moves[i]은 i 번째 이동을 나타냅니다. 유효한 이동은 R (오른쪽), L (왼쪽), U (위) 및 D (아래)입니다. 로봇이 모든 이동을 완료 한 후 원점으로 돌아 오면 true를 반환합니다. 그렇지 않은 경우는 false를 리턴합니다.
 
 참고 : 로봇이 "마주 보는" 방법은 부적합합니다. "R"은 항상 로봇을 오른쪽으로 한 번 움직이게 할 것이고, "L"은 항상 왼쪽으로 움직이게 할 것입니다. 또한, 로봇 움직임의 크기는 각 움직임마다 동일하다고 가정하십시오.
 */

func judgeCircle(_ moves: String) -> Bool {
    
    var locationHorizen: Int = 0
    var locationVertical: Int = 0
    
    for move in moves {
        if move == "R" {
            locationHorizen += 1
        } else if move == "L" {
            locationHorizen -= 1
        } else if move == "U" {
            locationVertical += 1
        } else {
            locationVertical -= 1
        }
    }
    
    return locationHorizen == 0 && locationVertical == 0
}

judgeCircle("UD")
judgeCircle("LL")
