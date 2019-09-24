/*
 두 정수 사이의 해밍 거리는 해당 비트가 다른 위치의 수입니다.
 
 두 개의 정수 x와 y가 주어지면, 해밍 거리를 계산하십시오.
*/

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var intValue: [Int] = [x, y]
    var hammingValue: [[Int]] = Array(repeating: Array(repeating: 0, count: 31), count: 2)
    var count: Int = 0
    
    for j in 0..<2 {
        for i in 0..<hammingValue[0].count {
            if intValue[j] == 1 || intValue[j] == 0 {
                hammingValue[j][i] = intValue[j]
                break
            }
            
            hammingValue[j][i] = intValue[j] % 2
            
            intValue[j] /= 2
        }
    }
    
    for index in 0..<hammingValue[0].count {
        if hammingValue[0][index] != hammingValue[1][index] {
            count += 1
        }
    }
     
    return count
}

hammingDistance(1, 4)
