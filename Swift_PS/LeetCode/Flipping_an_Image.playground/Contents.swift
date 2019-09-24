/*
 이진 행렬 A가 주어지면 이미지를 가로로 뒤집은 다음 뒤집어진 결과 이미지를 반환합니다.
 
 이미지를 가로로 뒤집으려면 이미지의 각 행을 반대로 바꿉니다. 예를 들어 [1, 1, 0]을 (를) 수평으로 대칭 이동하면 [0, 1, 1]이됩니다.
 
 이미지를 반전시키는 것은 각 0이 1로 대체되고 각 1이 0으로 대체됨을 의미합니다. 예를 들어, [0, 1, 1]을 반전 시키면 [1, 0, 0]이됩니다.
*/

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    
    var flipArray: [[Int]] = []

    for a in A {
        var array: [Int] = []
        
        for index in a {
            array.insert(index, at: 0)
        }
        
        for index in a.indices {
            if array[index] == 0 {
                array[index] = 1
            } else {
                array[index] = 0
            }
        }
        flipArray.append(array)
    }
    return flipArray
}

flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]])

func flipAndInvertImageA(_ A: [[Int]]) -> [[Int]] {

    var flipArray: [[Int]] = A

    for a in A.indices {
        flipArray[a] = flipArray[a].reversed()
        
        for index in A[a].indices {
            if flipArray[a][index] == 0 {
                flipArray[a][index] = 1
            } else {
                flipArray[a][index] = 0
            }
        }
    }
    return flipArray
}

flipAndInvertImageA([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]])
