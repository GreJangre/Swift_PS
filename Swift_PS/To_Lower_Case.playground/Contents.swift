/*
ToLowerCase () 함수는 문자열 매개 변수 str을 가지며 같은 문자열을 소문자로 반환합니다.
*/

func toLowerCase(_ str: String) -> String {
    var lowerString: String = ""
    
    for scalar in str.unicodeScalars {
        if scalar.value > 64 && scalar.value < 90 {
            if let newScalar = Unicode.Scalar(scalar.value + 32) {
                lowerString.append(String(newScalar))
            }
        } else {
            lowerString.append(String(scalar))
        }
    }
    
    return lowerString
}

toLowerCase("al&phaBET")
toLowerCase("LOVEly")
