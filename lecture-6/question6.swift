import Foundation

var gengou:String
var warekinen:Int
var seirekinen:Int
var gengou_output:String

gengou = "S"
warekinen = 33

switch gengou {
    case "M":
        gengou_output = "明治"
        seirekinen = 1867 + warekinen
    case "T":
        gengou_output = "大正"
        seirekinen = 1911 + warekinen
    case "S":
        gengou_output = "昭和"
        seirekinen = 1925 + warekinen
    case "H":
        gengou_output = "平成"
        seirekinen = 1988 + warekinen
    case "R":
        gengou_output = "令和"
        seirekinen = 2018 + warekinen
    default:
        gengou_output = "その他"
        seirekinen = 0
}

print("\(gengou_output)\(warekinen)年は西暦\(seirekinen)年です。")