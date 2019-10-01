/*
 정수 arr의 배열이 주어지면 배열의 각 값 발생 수가 고유한 경우에만 true를 리턴하는 함수를 작성하십시오.
 */

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var subArray = arr
    var count = arr.count
    var chkCount = count
    var boolArray = Array(repeating: false, count: count)
    
    for i in arr {
        if chkCount > count {
            if boolArray[chkCount - count] == true {
                return false
            }
            boolArray[chkCount - count] = true
            //print(boolArray)
            chkCount = count
        }
        subArray.removeAll() { $0 == i }
        count = subArray.count
        //print(count)
    }
    return true
}

//uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0])
uniqueOccurrences([1,2])
//uniqueOccurrences([1,2,2,1,1,3])
