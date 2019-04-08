/*
 여러분은 보석인 돌의 종류를 나타내는 문자열 J와 여러분이 가지고있는 돌을 나타내는 S를 받았습니다. S의 각 캐릭터는 가지고있는 돌의 유형입니다. 당신은 얼마나 많은 보석을 가지고 있는지 알고 싶습니다.
 J의 문자는 별개이며 J 및 S의 문자는 모두 문자입니다. 문자는 대소 문자를 구별하므로 "a"는 "A"와 다른 유형의 돌로 간주됩니다.
*/

func numJewelsInStonesA(_ J: String, _ S: String) -> Int {
    var count: Int = 0
    
    for s in S {
        for j in J {
            if j == s {
                count += 1
            }
        }
    }
    return count
}

func numJewelsInStonesB(_ J: String, _ S: String) -> Int {
    var count: Int = 0
    
    for j in J {
        if S.contains(j) {
            for s in S {
                if j == s {
                    count += 1
                }
            }
        }
    }
    return count
}

numJewelsInStonesA("aA", "aAAbbbb")
numJewelsInStonesB("aA", "aAAbbbb")
