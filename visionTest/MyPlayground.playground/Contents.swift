import UIKit

import UIKit



//---변수 ---//
//변수
var someVar = "a";
//상수
let someLet = "a";

//자료형 명시
var greeting = "Hello"
var someString:String = ""
var someInt:Int = 1
var someDouble:Double = 1.0
var someBool:Bool = true








//--- 함수 형태 ---//

/* Dart Function
 
 String greetingFunc(String name) {
    return "${greeting + a" " + name}";
 }
 */

//Swift Function
func greetingFunc(name:String) -> String{
    return ("\(greeting), \(name)")
}

print(greetingFunc(name: "swift"));








//--- 파라미터(매개변수), 아규먼트(인자값) ---//
func buildApp(by name:String){
    print("building app...")
    print("builder is \(name)")
}

buildApp(by:"cws");


func buildApp2(_ name:String){
    print("building app...")
    print("builder is \(name)")
}






//---- 클로저 ----//

//1급 객체
func someFunc(func1: (String)->String){
    print(func1("Swift"))
}

//이름 (아규먼트 레이블:)
var a = someFunc(func1:)


a({ (lang:String) -> String in
        return "\(lang)dfdf"
})


//후행 클로저

a{ (lang:String) in
    return "\(lang) is easy"
}
