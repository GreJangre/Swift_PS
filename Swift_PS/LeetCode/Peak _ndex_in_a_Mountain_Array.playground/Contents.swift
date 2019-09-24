/*
 다음 속성이 유지되면 배열 A를 산이라고하겠습니다.

 A.length >= 3
 A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1] 와 같은 0 < i < A.length-1 이 있습니다.
 A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1] 산인 배열이 주어지면 i를 구하세요.
 */

func peakIndexInMountainArray(_ A: [Int]) -> Int {
    var check = 0;
    
    for i in 0 ..< A.count {
        if check > A[i] {
            return i-1
        } else {
            check = A[i]
        }
    }
    return 0
}

peakIndexInMountainArray([0, 2, 1, 0])
