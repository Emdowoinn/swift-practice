import Foundation

var GakuBan:String 
GakuBan = String(readLine()!)

var Ten:Int
var Hyoka:String

while GakuBan != "owari" {
    Ten = Int(readLine()!)!

    switch Ten{
        case 90...:
            Hyoka = "A"
        case 80..<90:
            Hyoka = "B"
        case 70..<80:
            Hyoka = "C"
        case 60..<70:
            Hyoka = "D"
        case ...60:
            Hyoka = "E"
        default:
            Hyoka = "F"
    }

    print("学籍番号\(GakuBan)の評価＝\(Hyoka)")

    GakuBan = String(readLine()!)
}
