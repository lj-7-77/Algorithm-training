let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = input[0], k = input[1]
var d = Array(repeating: Array(repeating: 0, count: 1005), count: 1005)


func solution(_ n: Int, _ k: Int) {
    for i in 1...1000 {
        for j in 0...i {
            if j == 0 {
                d[i][j] = 1%10007
            } else if j == 1 {
                d[i][j] = i%10007
            } else {
                d[i][j] = (d[i-1][j-1] + d[i-1][j])%10007
            }
            
            if i == n, j == k {
                print(d[i][j])
            }
            
        }
    }
}

solution(n,k)
