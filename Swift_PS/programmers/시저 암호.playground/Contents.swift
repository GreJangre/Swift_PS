/*
 문제 설명

 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 AB는 1만큼 밀면 BC가 되고, 3만큼 밀면 DE가 됩니다. z는 1만큼 밀면 a가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
 
 제한 조건
 
 공백은 아무리 밀어도 공백입니다.
 s는 알파벳 소문자, 대문자, 공백으로만 이루어져 있습니다.
 s의 길이는 8000이하입니다.
 n은 1 이상, 25이하인 자연수입니다.
 */

func solution(_ s:String, _ n:Int) -> String {
    var str = ""
    var scalarInt = 0
    
    for scalar in s.unicodeScalars {
        if scalar.value >= 65 && scalar.value <= 90 {
            if (Int(scalar.value) + n) > 90 {
                scalarInt = Int(scalar.value) + n - 26
            } else {
                scalarInt = Int(scalar.value) + n
            }
        } else if scalar.value >= 97 && scalar.value <= 122 {
            if (Int(scalar.value) + n) > 122 {
                scalarInt = Int(scalar.value) + n - 26
            } else {
                scalarInt = Int(scalar.value) + n
            }
        } else if scalar.value == 32 {
            scalarInt = 32
        } else {
            scalarInt = Int(scalar.value) + n
        }
        if let newScalar = Unicode.Scalar(scalarInt) {
            str.append(String(newScalar))
        }
    }
    return str
}

solution("a B z A b Z", 25) // "z A y Z a Y"
solution("AB", 1) // "BC"
solution("z", 1) // "a"
solution("    AbfpR   ", 1) // "    BcgqS   "
