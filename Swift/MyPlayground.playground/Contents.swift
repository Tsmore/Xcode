import UIKit

//四則演算
print(1 + 1)
print(5 - 3)
print(3 * 3)
print(6 / 2)
print(7 % 3)

//地球の体積
print(4 / 3 * 3.14 * 6378 * 6378 * 6378)

//変数と定数
//var 変数名　＝　初期値
var x = 3
print(x * x)
//var number = 3
//var number = 4
//上記はエラーが出るが下記はエラーが出ない(大文字小文字は区別される)
//var number = 3
//var Number = 4

//変数の中身を書き換える
var n = 3
n = 4
print(n * n)
n = 5
print(n * n)

//変数の弱点と定数の利用
var tax = 1.1 //消費税は10％
var productA = 7000.0
var productB = 9000.0
print(productA * tax) //商品Aは7700円
tax = 1.08 //間違った消費税で上書きされる
print(productB * tax) //商品Bは9900円ではなく9720円になってしまう

//定数の宣言と初期化
let Tax = 1.1
Tax = 1.08 //定数Taxを上書きしようとしているためエラーになる
print(100.0 * Tax)
