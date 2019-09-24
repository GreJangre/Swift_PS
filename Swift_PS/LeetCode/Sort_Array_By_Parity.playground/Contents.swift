/*
 음수가 아닌 정수의 배열 A가 주어지면 A의 모든 짝수 번째 요소로 구성된 배열을 반환하고 그 뒤에 A의 모든 홀수 요소를 반환합니다.
 
 이 조건을 만족하는 응답 배열을 반환 할 수 있습니다.
*/

func sortArrayByParityA(_ A: [Int]) -> [Int] {
    var evenArray: [Int] = []
    var oddArray: [Int] = []
    
    for a in A {
        if a % 2 == 0 {
            evenArray.append(a)
        } else {
            oddArray.append(a)
        }
    }
    
    return evenArray + oddArray
}

func sortArrayByParityB(_ A: [Int]) -> [Int] {
    var sortArray: [Int] = []
    
    for a in A {
        if a % 2 == 0 {
            sortArray.insert(a, at: 0)
        } else {
            sortArray.append(a)
        }
    }
    
    return sortArray
}

sortArrayByParityA([3,1,2,4])
sortArrayByParityB([3,1,2,4])
