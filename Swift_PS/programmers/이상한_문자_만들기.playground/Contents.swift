/*
 문제 설명

 문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 각 단어는 하나 이상의 공백문자로 구분되어 있습니다. 각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수, solution을 완성하세요.
 제한 사항
 문자열 전체의 짝/홀수 인덱스가 아니라, 단어(공백을 기준)별로 짝/홀수 인덱스를 판단해야합니다.
 첫 번째 글자는 0번째 인덱스로 보아 짝수번째 알파벳으로 처리해야 합니다.
 */


func solution(_ s:String) -> String {
    var scalarArray: [UInt32] = []
    var scalarScdArray: [[UInt32]] = []
    var str = ""
    var wordsArray: [String] = []
    
    for i in s.split(separator: " ") {
        wordsArray.append(String(i))
    }
    
    print(s.split(separator: " "))
    
    for char in wordsArray {
        scalarArray = []
        
        for c in char.unicodeScalars {
            scalarArray.append(c.value)
        }
        scalarScdArray.append(scalarArray)
    }
    
    for k in 0..<scalarScdArray.count {
        for j in 0..<scalarScdArray[k].count {
            if j % 2 == 0 {
                if scalarScdArray[k][j] >= 97 {
                    scalarScdArray[k][j] -= 32
                }
            } else {
                if scalarScdArray[k][j] >= 65 && scalarScdArray[k][j] <= 90 {
                    scalarScdArray[k][j] += 32
                }
            }
            if let newScalar = Unicode.Scalar(scalarScdArray[k][j]) {
                str.append(String(newScalar))
            }
        }
        if k != (scalarScdArray.count - 1) {
            str.append(" ")
        }
    }
    
    return str
}

//solution("try hello world") // "TrY HeLlo WoRID"
solution(" try hello world ")
