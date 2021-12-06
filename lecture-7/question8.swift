import Foundation

var syouhinTanka:Int 
syouhinTanka = Int(readLine()!)! 

var kounyuuSuuryou:Int 
var shiharaiKingaku:Int

repeat {
    kounyuuSuuryou = Int(readLine()!)!

    switch kounyuuSuuryou{
        case 30...:
            syouhinTanka = syouhinTanka*7/10
        case 20..<30:
            syouhinTanka = syouhinTanka*8/10
        case 10..<20:
            syouhinTanka = syouhinTanka*9/10   
        default:
            break
    }

    shiharaiKingaku = syouhinTanka * kounyuuSuuryou
    print("商品単価は\(syouhinTanka)円です。")
    print("購入数量は\(kounyuuSuuryou)個です。") 
    print("支払金額は\(shiharaiKingaku)円です。")

    syouhinTanka = Int(readLine()!)!
} while syouhinTanka > 0
