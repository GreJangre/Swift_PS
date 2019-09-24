/*
 자체 분할 숫자는 포함 된 모든 숫자로 나눌 수있는 숫자입니다.

 예를 들어 128은 128 % 1 == 0, 128 % 2 == 0 및 128 % 8 == 0이므로 자체 분할 숫자입니다.

 또한 자체 분할 숫자에는 숫자 0이 포함될 수 없습니다.

 하한과 상한이 주어지면 가능한 한 경계를 포함하여 가능한 모든 자기 분할 수의 목록을 출력하십시오.
 */

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result: [Int] = []
    
    for i in left ... right {
        var tempI = i
        
        while (tempI != 0) {
            if (tempI % 10) != 0 {
                if (i % (tempI % 10)) == 0 {
                    tempI /= 10;
                } else {
                    break
                }
                
                if tempI == 0 {
                    result.append(i)
                    break
                }
            } else {
                break
            }
        }
    }
    return result
}

selfDividingNumbers(1, 22) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
