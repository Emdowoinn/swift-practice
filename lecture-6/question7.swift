import Foundation

var shiheis:[Int] = [10000,5000,1000,100,50,10,5,1]
var maisuu:[Int] = [0,0,0,0,0,0,0,0]

var kingaku:Int
var remains:Int = 0
kingaku = Int(readLine()!)!
remains = kingaku

for (index,shihei) in shiheis.enumerated() {
    maisuu[index] = remains/shihei
    remains = remains - maisuu[index] * shihei
    if(maisuu[index] != 0 ){
        print("\(shihei)円紙幣は\(maisuu[index])枚")
    }
}