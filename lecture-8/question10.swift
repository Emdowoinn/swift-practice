import Foundation

for i in 1...20{
    for j in 1...20{
        let mul = i*j
        var str:String = ""
        if mul<10{
            str = "  "+String(mul)+" "
        } else { if mul<100 { 
            str = " "+String(mul)+" "
                } else {if mul>=100 { 
                    str = String(mul)+" "
                    }
                }
            }
        print(str, terminator: "")
    }
    print()
}