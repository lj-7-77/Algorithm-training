
func solution(_ common:[Int]) -> Int {
    var value = 0
    var result = 0
    
    value = common[1] - common[0]
    if value == common[2] - common[1] {
        result = common.last! + value
        return result
    }
    
    value = common[1] / common[0]
    if value == common[2] / common[1] {
        result = common.last! * value
    }
    return result
}