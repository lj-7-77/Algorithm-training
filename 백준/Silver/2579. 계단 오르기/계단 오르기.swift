let m = Int(readLine()!)!
var input = [Int]()
var d = Array(repeating: 1, count: m)

for _ in 0..<m {
    input.append(Int(readLine()!)!)
}

print(solution(m))

func solution(_ m: Int) -> Int {
    if m == 1 {
        return input[0]
    } else if m == 2 {
        return max(input[1], input[0]+input[1])
    } else if m == 3 {
        return max(input[1]+input[2], input[0]+input[2])
    } else {
        d[0] = input[0]
        d[1] = max(input[1], input[0]+input[1])
        d[2] = max(input[1]+input[2], input[0]+input[2])
        
        for n in 3..<m {
            d[n] = max(d[n-2]+input[n], d[n-3]+input[n-1]+input[n])
        }
        return d[m-1]
    }
}