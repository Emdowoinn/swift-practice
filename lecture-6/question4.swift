import Foundation

var sintyou:Double
var taijyuu:Double
var hyoutai:Double
var bmi:Double
var hantei:String

sintyou = 180.8
taijyuu = 88.8

hyoutai = Double(round(pow(sintyou/100,2) * 22 * 100)/100)
bmi = Double(round(taijyuu/pow(sintyou/100,2) * 100)/100)

switch bmi {
case 18.5..<25:
    hantei = "普通体重"
case 25..<30:
    hantei = "肥満（１度）"
case 30..<35:
    hantei = "肥満（２度）"
case 35..<40:
    hantei = "肥満（３度）"
case 40...:
    hantei = "肥満（４度）"
default:
    hantei = "低体重"
}

print("身長が\(sintyou)cm　体重が\(taijyuu)kgの人の標準体重は\(hyoutai)kg BMIは\(bmi)です。")
print("あなたは \(hantei)です。")