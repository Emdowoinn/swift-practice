let x : Int = 22
switch x {
case 1,2:
      print("値は 1 または 2 です")
case 3...10:
    print("値は 3 以上 10 以下です")
case 11..<20:
      print("値は 11 以上 20 未満です")
case 21:
       break
case 22...:
      print("値は 22 以上です")
default:
      print("値は 0 以下です")
}
