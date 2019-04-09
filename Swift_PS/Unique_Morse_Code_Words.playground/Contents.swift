/*
 국제 모스 부호는 각 문자가 일련의 점과 대시에 매핑되는 표준 인코딩을 정의합니다. "a"는 ".-", "b"는 "-...", "c"는 "-.-.", 등등.
 
 편의상 영어 알파벳 26 자의 전체 표가 아래에 나와 있습니다.
 
 [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",
 ".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",
 ".--","-..-","-.--","--.."]
 
 이제 단어 목록이 주어지면 각 단어는 각 문자의 모스 부호를 연결 한 것으로 쓸 수 있습니다. 예를 들어 "cba"는 "-.- .. - ..."(연결 "-.-."+ "-..."+ ".-")로 작성할 수 있습니다. 우리는 그러한 연결을 단어의 변형이라고 부를 것입니다.
 
 우리가 가지고있는 모든 단어들 사이의 다양한 변형의 수를 반환합니다.
*/

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    
    var uniqueMorseWords: Set<String> = []
    
    let morses: [String] = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",
                ".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",
                ".--","-..-","-.--","--.."]
    
    for word in words {
        var morseWords: String = ""
        
        for alphabet in word.unicodeScalars {
            morseWords.append(morses[Int(alphabet.value - 97)])
        }
        uniqueMorseWords.insert(morseWords)
    }
    
    return uniqueMorseWords.count
}

uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])
