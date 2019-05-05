/*
 두 정수 사이의 해밍 거리는 해당 비트가 다른 위치의 수입니다.
 
 두 개의 정수 x와 y가 주어지면, 해밍 거리를 계산하십시오.
*/

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var intX: Int = x
    var intY: Int = y
    var hammingX = [Int](repeating: 0, count: 31)
    var hammingY =  [Int](repeating: 0, count: 31)
    var count: Int = 0
    
    for i in 0...hammingX.count {
        if intX == 1 || intX == 0 {
            hammingX[i] = intX
            break
        }
        
        hammingX[i] = intX % 2
        
        intX /= 2
    }
    
    for i in 0...hammingY.count {
        if intY == 1 || intY == 0 {
            hammingY[i] = intY
            break
        }
        
        hammingY[i] = intY % 2
        
        intY /= 2
    }

    for index in 0..<hammingX.count {
        if hammingX[index] != hammingY[index] {
            count += 1
        }
    }

    return count
}

hammingDistance(1, 4)
