//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let adress = "http://www.osxdev.org/forum/index.php?threads/swift-2-0에서-try-catch로-fatal- error-잡을-수-있나요.382/"

let aaa = "esaldkfjasdlfd아아아아--이오우-어어어-어"

extension String {
//    var length : Int {
//        return self.characters.count
//    }
    
    func filterKorea() -> Array<String> {
      // var aa = ""
      //  let koreanLetter: Array<Any> = [self >= "ㄱ".unicodeScalars.first! || self >= "힣".unicodeScalars.first!]

        let context = self.components(separatedBy: "-")
        var temp = Array<String>()

        for item in context {
            var tempString = ""
            for i in item.unicodeScalars {
                if i.value >= 12593 && i.value <= 55203 {
            //    if i >= "ㄱ".unicodeScalars.first! || i >= "힣".unicodeScalars.first! {
                    let convertstring = String(i)
                    tempString += convertstring
                   // temp.append(convertstring) //[에,서,로,잡,을,수,있,나,요]
                }
            }
            if tempString.isEmpty == false {
                temp.append(tempString) // [에서,로,잡을,수,있나요]
            }
        }
        return temp

    }
}

print(adress.filterKorea())
print(aaa.filterKorea())

/*
var cutArray = cut

let letter1 : UnicodeScalar = "가" //44032
let letter0 : UnicodeScalar = "ㄱ" //12593
let letter2 : UnicodeScalar = "힣" //55203

*/