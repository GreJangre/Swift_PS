/*
 문자열 단어와 문자열 문자의 배열이 제공됩니다.

 문자열은 문자의 문자로 구성 할 수 있으면 좋습니다 (각 문자는 한 번만 사용할 수 있음).

 모든 좋은 문자열의 길이의 합을 단어로 반환하십시오.
 */

func countCharacters(_ words: [String], _ chars: String) -> Int {
    var result = 0
    for word in words {
        for i in word {
            var count = word.count
            
            for char in chars {
                if i == char {
                    count -= 1
                    break
                }
            }
            
            if count == 0 {
                result += 1
            }
        }
    }
    
    return result
}

countCharacters(["hello","world","leetcode"], "welldonehoneyr") // 10
