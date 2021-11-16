import Foundation

var seirekinen:Int
seirekinen = Int(readLine()!)!

var hantei:String

if ((seirekinen%4) != 0){
    hantei = "うるう年ではありません。"
} else if ((seirekinen%100) != 0){ 
    hantei = "うるう年です。"
} else if ((seirekinen%400) != 0){
    hantei = "うるう年ではありません。"
} else if ((seirekinen%400) == 0){
    hantei = "うるう年です。"
} else {
    hantei = "うるう年ではありません。"
}

print("\(seirekinen)年は\(hantei)")