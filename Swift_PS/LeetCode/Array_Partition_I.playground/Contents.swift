/*
 2n 정수의 배열이 주어지면, 이 정수를 n쌍의 정수로 그룹화하는 것입니다.
 (예 : (a1, b1), (a2, b2), ..., (an, bn))
 1에서 n까지의 모든 i에 대한 min(ai, bi)의 합을 가능한 크게 만듭니다
 */

func arrayPairSum(_ nums: [Int]) -> Int {
    var sum = 0
    var array = nums
    array.sort()
    
    for i in stride(from: 0, to: nums.count, by: 2) {
        sum += array[i]
    }
    return sum
}

arrayPairSum([1,4,3,2])
