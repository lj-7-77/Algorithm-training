func solution(_ my_string: String) -> String {
    var newString = ""

    for char in my_string {
        if char != "a" && char != "e" && char != "i"
            && char != "o" && char != "u" {
            newString.append(char)
        }
    }
    return newString
}