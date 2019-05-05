/*
 비 감수 순서로 정렬된 정수 배열 A가 주어지면 각 숫자의 제곱의 배열을 감소하지 않는 순서로 반환합니다.
*/

func sortedSquares(_ A: [Int]) -> [Int] {
    
    var sortedA: [Int] = []
    
    for a in A {
        if a < 0 {
            sortedA.append(-a)
        } else {
            sortedA.append(a)
        }
    }
    return sortedA
}

sortedSquares([-7,-3,2,3,11])
sortedSquares([-4,-1,0,3,10])

func sortedSquaresA(_ A: [Int]) -> [Int] {
    
    var squareA: [Int] = []
    
    for a in A {
        squareA.append(a * a)
    }
    
    return squareA.sorted()
}

sortedSquaresA([-7,-3,2,3,11])
sortedSquaresA([-4,-1,0,3,10])
