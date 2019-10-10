/*
 음이 아닌 정수로 구성된 배열 A가 주어지면 A의 정수 중 절반은 홀수이고 정수의 절반은 짝수입니다.

 A[i]가 홀수 일 때마다 i가 홀수가되도록 배열을 정렬합니다. A[i]가 짝수 일 때마다 나는 짝수입니다.

 이 조건을 만족하는 응답 배열을 반환 할 수 있습니다.
 */

func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var array = Array(repeating: 0, count: A.count)
    var even = 0
    var odd = 1
    
    for i in 0..<A.count {
        
        if A[i] % 2 == 0 {
            array[even] = A[i]
            even += 2
        } else {
            array[odd] = A[i]
            odd += 2
        }
    }
    
    
    return array
}

sortArrayByParityII([4, 2, 5, 7]) // [4,7,2,5] or [2,5,4,7] or [2,7,4,5]
