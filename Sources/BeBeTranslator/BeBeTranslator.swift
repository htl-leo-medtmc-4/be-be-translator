struct BeBeTranslator {
    let cyphering: String
    
    func translate(_ sentence: String) -> String {
        var result = ""
        for char in sentence {
            result += String(char)
            if cyphering.contains(char) {
                if char.isUppercase {
                    result += "B"
                } else {
                    result += "b"
                }
                result += String(char)
            }
        }
        return result
    }
}
