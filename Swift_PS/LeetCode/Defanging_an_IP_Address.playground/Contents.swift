/* 유효한 (IPv4) IP 주소가 제공되면 해당 IP 주소의 축소 된 버전을 반환하십시오.

각 IP 주소는 "."기간마다 바뀝니다. "[.]"와 함께. */

func defangIPaddr(_ address: String) -> String {
    var editAddress: String = "";
    
    for ip in address {
        if ip == "." {
            editAddress.append("[.]")
        } else {
            editAddress.append(ip)
        }
    }
    
    return editAddress
}


defangIPaddr("255.100.50.0")
