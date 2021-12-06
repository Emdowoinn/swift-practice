import Foundation

//キーボードより入力された任意の正の整数の変数
var x:Int 
x = Int(readLine()!)! 

var sum : Int = 0 
for Suuti in 1...x { 
    sum += Suuti 
    }
print("1から任意の正の整数\(x)までの合計は\(sum)")
