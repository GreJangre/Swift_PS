/*
 모든 전자 메일은 @ 기호로 구분된 로컬 이름과 도메인 이름으로 구성됩니다.
 
 예를 들어, alice@leetcode.com에서 alice는 로컬 이름이고 leetcode.com은 도메인 이름입니다.
 
 소문자 외에도 '.'또는 '+'가 포함될 수 있습니다.
 
 전자 메일 주소의 로컬 이름 부분에있는 일부 문자 사이에 마침표 ('.')를 추가하면 거기에서 보낸 메일이 로컬 이름에 점없이 같은 주소로 전달됩니다. 예를 들어, "alice.z@leetcode.com"및 "alicez@leetcode.com"은 동일한 전자 메일 주소로 전달됩니다. 이 규칙은 도메인 이름에는 적용되지 않습니다.
 
 로컬 이름에 더하기 ('+')를 추가하면 첫 번째 더하기 기호 다음의 모든 항목이 무시됩니다. 이렇게 하면 특정 이메일을 필터링 할 수 있습니다. 예를 들어, m.y+name@email.com은 my@email.com으로 전달됩니다. (이 규칙은 도메인 이름에는 적용되지 않습니다.)
 
 이 두 규칙을 동시에 사용할 수 있습니다.
 
 이메일 목록이 주어지면 목록의 각 주소로 하나의 이메일을 보냅니다. 실제로 얼마나 많은 주소가 메일을 수신합니까?
 */

func numUniqueEmails(_ emails: [String]) -> Int {
    
    var uniqueEmails: Set<String> = []
    
    for email in emails {
        
        let index = email.firstIndex(of: "@") ?? email.endIndex
        
        var localName = email[..<index]
        
        for char in localName {
            
        }
        
        
    }
    return 0
}

numUniqueEmails(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"])
