/*
 올바른 괄호 문자열은 빈 (""), "(" + A + ") 또는 A + B입니다. 여기서 A와 B는 유효한 괄호 문자열이고 +는 문자열 연결을 나타냅니다. 예를 들어, "", "()", "(())() 및"(()(()))"는 모두 유효한 괄호 문자열입니다.
 
 유효한 괄호 문자열 S는 비어 있지 않은 경우 프리미티브이며 A와 B가 비어 있지 않은 유효한 괄호 문자열을 사용하여 S = A + B로 분할하는 방법이 없습니다.
 
 유효한 괄호 문자열 S가 주어지면, 그 원시 분해를 고려하십시오. S = P_1 + P_2 + ... + P_k, 여기서 P_i는 원시 유효 괄호 문자열입니다.
 
 S의 원시 분해에서 모든 원시 문자열의 가장 바깥 쪽 괄호를 제거한 다음 S를 반환합니다.
*/

func removeOuterParentheses(_ S: String) -> String {
    var count = 0;
    var parentheses = "";
    
    for s in S {
        
        if s == "(" {
            count += 1
            if count > 1 {
                parentheses.append(s)
            }
        } else if s == ")"  {
            count -= 1
            if count > 0 {
                parentheses.append(s)
            }
        }
    }
    return parentheses
}

removeOuterParentheses("(()())(())") // "()()()"
