/*
 문제 설명

 자연수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
 
 제한 사항
 
 n은 0 이상 3000이하인 자연수입니다.
 */

func solution(_ n:Int) -> Int {
    var sum = 0
    
    if n == 0 {
        return 0
    }
    
    for i in 1...n {
        if n % i == 0 {
            sum += i
        }
    }
    return sum
}

solution(12) // 28
solution(0)
solution(3000)
