/*
 문제 설명

 함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
 
 제한 조건
 
 n은 1이상 8000000000 이하인 자연수입니다.
 */

func solution(_ n:Int64) -> Int64 {
    var answer: [Int64] = []
    var div = n
    var quot: Int64 = 1
    var result: Int64 = 0
    
    while div != 0 {
        answer.append(div % 10)
        div /= 10
    }
    
    for a in answer.sorted() {
        result += a * quot
        quot *= 10
    }
    
    return result
}

solution(118372) // 873211
