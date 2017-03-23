//
//  ViewController.swift
//  VendingMachin
//
//  Created by Danb on 2017. 3. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

protocol MakeFolderDelegate {
   //func moneyView(money text : String)
}

class ViewController: UIViewController {
    @IBOutlet weak var coffB: UIButton!
    @IBOutlet weak var cokeB: UIButton!
    @IBOutlet weak var orangeB: UIButton!
    @IBOutlet weak var peachB: UIButton!
    @IBOutlet weak var pineB: UIButton!
    @IBOutlet weak var sojuB: UIButton!
    
    @IBOutlet weak var noticeBd: UITextView!
    
    @IBOutlet weak var moneyView: UILabel!
    
    @IBOutlet weak var moneyTf: UITextField!
    
    @IBOutlet weak var stockList: UITextView!
    @IBOutlet weak var boughtList: UITextView!
    
    @IBOutlet weak var coffeeI: UIImageView!
    @IBOutlet weak var cokeI: UIImageView!
    @IBOutlet weak var orageI: UIImageView!
    @IBOutlet weak var peachI: UIImageView!
    @IBOutlet weak var pineI: UIImageView!
    @IBOutlet weak var sojuI: UIImageView!
    
    
    var currentBalance = Int()
    
    @IBOutlet weak var get1: UIImageView!
    @IBOutlet weak var get2: UIImageView!
    @IBOutlet weak var get3: UIImageView!
    @IBOutlet weak var get4: UIImageView!
    @IBOutlet weak var get5: UIImageView!

    var getArray = [Any]()

    
    @IBOutlet weak var cocaView: UIView!
    @IBOutlet weak var jinroView: UIView!
    
    let lighted = UIColor(red: 255/255, green: 70/255, blue: 160/255, alpha: 1.0)
    let originBt = UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 1.0)

    var cofpoint : CGPoint!
    var get1point : CGPoint!
    
    @IBAction func coffeeBt(_ sender: UIButton) {
        currentBalance -= 1000
        changeBt()
        
        moneyView.text = String(currentBalance)
        if currentBalance < 1000 {
            noticeBd.text = "Need more Coin"
        }
        if currentBalance > 1000 {
            noticeBd.text = ""
        }
        UIView.animate(withDuration: 0.5, animations:
            {self.coffeeI.center = self.get1point
        self.getArray.append(self.get1.image = #imageLiteral(resourceName: "coffee.png"))
         self.coffeeI.alpha = 0
        })
        cofpoint = coffeeI.center

        
    }

    @IBAction func cokeBt(_ sender: UIButton) {
        currentBalance -= 1000
        changeBt()

        moneyView.text = String(currentBalance)
        if currentBalance < 1000 {
            noticeBd.text = "Need more Coin"
        }
        if currentBalance >= 1000 {
        }
        UIView.animate(withDuration: 0.5, animations:
            {self.coffeeI.center = self.get1point
                self.getArray.append(self.get2.image = #imageLiteral(resourceName: "coke.png"))
                self.coffeeI.alpha = 0
        })
        cofpoint = coffeeI.center
    
    }

    @IBAction func orangeBt(_ sender: UIButton) {
        currentBalance -= 1500
        changeBt()
        moneyView.text = String(currentBalance)

        if currentBalance < 1500 {
            noticeBd.text = "Need more Coin"
        }
        
    }

    @IBAction func peachBt(_ sender: UIButton) {
        currentBalance -= 2000
        changeBt()
        moneyView.text = String(currentBalance)
        noticeBd.text = "Touch your ID Card"
        if currentBalance < 2000 {
            noticeBd.text = "Need more Coin"
        }
        
    }

    @IBAction func pineBt(_ sender: UIButton) {
        currentBalance -= 2000
        changeBt()
        moneyView.text = String(currentBalance)
        noticeBd.text = "Touch your ID Card"
        if currentBalance < 2000 {
            noticeBd.text = "Need more Coin"
        }
        
    }

    @IBAction func sojuBt(_ sender: UIButton) {
        currentBalance -= 2500
        changeBt()

        moneyView.text = String(currentBalance)
        noticeBd.text = "Touch your ID Card"
        if currentBalance < 2500 {
            noticeBd.text = "Need more Coin"
        }
    }
    
    func changeBt() {
        if currentBalance < 1000 {
            cokeB.backgroundColor = originBt
            coffB.backgroundColor = originBt
            orangeB.backgroundColor = originBt
            sojuB.backgroundColor = originBt
            peachB.backgroundColor = originBt
            pineB.backgroundColor = originBt
        }
         if currentBalance >= 2500 {
            cokeB.backgroundColor = lighted
            coffB.backgroundColor = lighted
            orangeB.backgroundColor = lighted
            sojuB.backgroundColor = lighted
            peachB.backgroundColor = lighted
            pineB.backgroundColor = lighted
        }
        else if currentBalance >= 2000 {
            cokeB.backgroundColor = lighted
            coffB.backgroundColor = lighted
            orangeB.backgroundColor = lighted
            peachB.backgroundColor = lighted
            pineB.backgroundColor = lighted
          //  sojuB.backgroundColor = originBt
        }
        else if  currentBalance >= 1500 {
            cokeB.backgroundColor = lighted
            coffB.backgroundColor = lighted
            orangeB.backgroundColor = lighted
         //   sojuB.backgroundColor = originBt
        //    peachB.backgroundColor = originBt
         //   pineB.backgroundColor = originBt
        }
        else if  currentBalance >= 1000 {
            cokeB.backgroundColor = lighted
            coffB.backgroundColor = lighted
         //   orangeB.backgroundColor = lighted
         //   sojuB.backgroundColor = lighted
        //    peachB.backgroundColor = lighted
         //   pineB.backgroundColor = lighted
        }
        
        // print("BBBBButton")
    }

    
    
    
    //var writecoin = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        cocaView.layer.cornerRadius = 10
        jinroView.layer.cornerRadius = 10
        
        cokeB.layer.cornerRadius = 10
        coffB.layer.cornerRadius = 10
        orangeB.layer.cornerRadius = 10
        peachB.layer.cornerRadius = 10
        pineB.layer.cornerRadius = 10
        sojuB.layer.cornerRadius = 10
        
        cofpoint = coffeeI.center
        get1point = get1.center
        getArray = [get1, get2, get3, get4, get5]

        let test = VendingMachine()
        let coke = Coke()
        let coffee = Coffee()
        print(coke == coffee)
        //test.addDrink(drink: coke, count : 1)
    
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func addCoin(_ sender: Any) {
        currentBalance = Int(moneyView.text!)! + Int(moneyTf.text!)!
        moneyView.text = String(currentBalance)
        moneyTf.text = ""
        changeBt()
        
        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

