/*
 정수 arr의 배열이 주어지면 배열의 각 값 발생 수가 고유한 경우에만 true를 리턴하는 함수를 작성하십시오.
 */

func uniqueOccurrencess(_ arr: [Int]) -> Bool {
    var subArray = arr
    var count = arr.count
    var chkCount = count
    var boolArray = Array(repeating: false, count: count)
    
    for i in arr {
        subArray.removeAll() { $0 == i }
        count = subArray.count
        
        if chkCount > count {
            if boolArray[chkCount - count] == true {
                return false
            }
            boolArray[chkCount - count] = true
            chkCount = count
        }
    }
    return true
}

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var subArray: [Int: Int] = [:]
    for i in arr {
        if subArray[i] != nil {
            subArray[i]! += 1
        } else {
            subArray[i] = 1
        }
    }
    
    var subArray2: [Int: Bool] = [:]
    for value in subArray.values {
        if subArray2[value] != nil {
            return false
        }
        subArray2[value] = true
    }
    
    return true
}

uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0])
uniqueOccurrences([1,2])
uniqueOccurrences([1,2,2,1,1,3])
uniqueOccurrences([26,2,16,16,5,5,26,2,5,20,20,5,2,20,2,2,20,2,16,20,16,17,16,2,16,20,26,16])
