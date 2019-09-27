/*
 문제 설명

 길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.
 
 제한 조건
 
 n은 길이 10,000이하인 자연수입니다.
 */

func solution(_ n:Int) -> String {
    var str = ""
    
    for i in 1...n {
        if i % 2 == 0 {
            str.append("박")
        } else {
            str.append("수")
        }
    }
    return str
}

solution(3) // 수박수
solution(4) // 수박수박
