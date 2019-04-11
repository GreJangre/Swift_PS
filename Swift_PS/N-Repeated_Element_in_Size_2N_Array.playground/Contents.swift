/*
 크기가 2N인 배열 A에는 N + 1개의 고유한 요소가 있으며 이 요소 중 정확히 하나가 N번 반복됩니다.
 
 요소를 N번 반복하여 반환합니다.
*/

func repeatedNTimes(_ A: [Int]) -> Int {
    var setA: Set<Int> = []
    var total: Int = 0
    var uniqueTotal: Int = 0
    let N = A.count / 2
    
    for a in A {
        total += a
        setA.insert(a)
    }
    
    for uniqNumber in setA {
        uniqueTotal += uniqNumber
    }
    
    return (total - uniqueTotal) / (N - 1)
}

repeatedNTimes([5,1,5,2,5,3,5,4])
repeatedNTimes([2,1,2,5,3,2])
repeatedNTimes([1,2,3,3])
