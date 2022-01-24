// 1000円を持ってバーガーキングに行ったらバランスよく注文リストを作ってくれるアプリ
// 最初はバーガー一個、次にサイドメニューを複数（重複あり・なし選べる）、最後に予算余ったらドリンク一杯
import Foundation

var burgerMenu:[String:Int] = ["ワッパチーズ":410, 
                        "アボカドワッパ": 490, 
                        "スパイシーワッパ": 410, 
                        "フィッシュバーガー": 360, 
                        "タルタルチキンバーガー": 310, 
                        "クラシックホットドッグ": 360]
var sideMenu:[String:Int] = ["スナックチキン":120, 
                            "チキンナゲット":150, 
                            "フレンチフライ":150,
                            "オニオンリング":300,
                            "シーザーサラダ":300,
                            "チーズバイツ":100,
                            "ハッシュブラウン":100,
                            "アップルパイ":100,
                            "サンデー":150]
var drinkMenu:[String] = ["コカ・コーラ",
                         "スプライト",
                         "ジンジャエール",
                         "カルピス",
                         "ウーロン茶",
                         "オレンジジュース",
                         "アイスコーヒー"]
// 注文合計金額
var sum: Int = 0

// サイドメニューは重複してもいいのかを聞く
print("サイドメニューは重複して大丈夫ですか？（y/n)")
var sideMenuInput:String = String(readLine()!)

// サイドメニューを重複しないようにオーダーを記録しておく
var sideMenuOrderList:[String] = []

// 先にバーガーを決める（1個だけ）
if let order = burgerMenu.randomElement(){
    sum += order.value
    print("\(order.key) \(order.value)円")
}

// 次にサイドメニューを金額上限までピックアップする
while sum < 1000 {
    if let order = sideMenu.randomElement(){
        let temp = sum + order.value
        if temp > 1000{
            break
        } else if temp < 1000{
            // 重複してもいいなら普通に処理
            if sideMenuInput == "y" {
                sum += order.value
                print("\(order.key) \(order.value)円")
            } else if sideMenuInput == "n"{
                // オーダーリストの中に存在チェック
                if sideMenuOrderList.firstIndex(of: order.key)  == nil {
                    sideMenuOrderList.append(order.key)
                    sum += order.value
                    print("\(order.key) \(order.value)円")
                } else{
                    continue
                }
            } else { 
                print ("入力に間違いがあります。")
                break
            }
        }
    }
}

// 190円以上残ったらドリンク一杯買う
let remain = 1000 - sum
if remain > 190 {
    if let order = drinkMenu.randomElement(){
    sum += 190
    print("\(order) 190円")
    }
} else {
    print("ドリンクを買うお金がありません。。。")
}

print("合計金額は: \(sum)円です")