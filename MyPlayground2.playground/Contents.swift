import UIKit

//繰り返し処理

for n in 1...9 {
    print(3 * n)
}

//これだと3の段と4の段が交互に出力されてしまう
//for n in 1...9 {
//    print(3 * n)
//    print(4 * n)
//}

//for分の入れ子
//変数のスコープはブロック内
//for n in 1...9 {
//    var dan1 = 3
//    var dan2 = 4
//    print(dan1 * n)
//    print(dan2 * n)
//}
//var dan1 = 5 dan1,dan2はfor分のブロック内で宣言されているから
//var dan2 = 6　ブロック外で再宣言するとエラーになる
//！！！！！for分で定数は宣言してはいけない！！！！！
//for let n = 1 in 1...9 {
//    print(3 * n)
//}

//for分の入れ子(九九の段)
for x in 1...9 {
    for y in 1...9 {
        print(x * y)
    }
}
