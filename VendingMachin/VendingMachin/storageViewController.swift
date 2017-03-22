//
//  storageViewController.swift
//  VendingMachin
//
//  Created by Danb on 2017. 3. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit


class storageViewController: UIViewController {
    var machine = VendingMachine()
    
    @IBAction func backBt(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    var coffeestock = Dictionary<String,Int>()
    let drink = Drink()
    var stock = [String : [Drink]]()
    var drinkset = [Drink]()
    var money = Int()
    @IBOutlet weak var allstock: UILabel!

    @IBAction func stockcheck(_ sender: Any) {
        var allnb = Int()
        allnb = Int(coffeeNb.text!)! + Int(cokeNb.text!)! + Int(juiceNb.text!)! + Int(peachNb.text!)! + Int(pineNb.text!)! + Int(sojuNb.text!)!
        allstock.text = String(allnb)
    }
    
    @IBAction func coffeeSt(_ sender: Any) {
        let coffee = Coffee()
        machine.addDrink(drink: coffee)
        print(machine.allstock)
    }
    
    func changeLabel() {
    }
    
    @IBAction func cokeSt(_ sender: Any) {
        let coke = Coke()
        machine.addDrink(drink: coke)
    }
/*
        var cokeN = Int()
        cokeN += 1
        cokeNb.text = String(cokeN + Int(cokeNb.text!)!)
 */
    @IBAction func juiceSt(_ sender: Any) {
        let orangeJuice = Juice()
        machine.addDrink(drink: orangeJuice)
    }
        //juiceNb.text = String( + Int(juiceNb.text!)!)

        /*
        var juiceN = Int()
        juiceN += 1
 */
    
    @IBAction func peachSt(_ sender: Any) {
        let peachTok = Toktokpeach()
        machine.addDrink(drink: peachTok)
/*
        var peachN = Int()
        peachN += 1
        peachNb.text = String(peachN + Int(peachNb.text!)!)*/
    }
    @IBAction func pineSt(_ sender: Any) {
        let pineTok = Toktokpine()
        machine.addDrink(drink: pineTok)
/*
        var pineN = Int()
        pineN += 1
        pineNb.text = String(pineN + Int(pineNb.text!)!)
 */
    }
    @IBAction func sojuSt(_ sender: Any) {
        let soju = Soju()
        machine.addDrink(drink: soju)
/*
        var sojuN = Int()
        sojuN += 1
        sojuNb.text = String(sojuN + Int(sojuNb.text!)!)*/
    }
    

    /*
    @IBOutlet weak var coffeeSt: UIButton!
    @IBOutlet weak var cokeSt: UIButton!
    @IBOutlet weak var juiceSt: UIButton!
    @IBOutlet weak var peachSt: UIButton!
    @IBOutlet weak var pineSt: UIButton!
    @IBOutlet weak var sojuSt: UIButton!
    */
    
    @IBOutlet weak var coffeeNb: UILabel!
    @IBOutlet weak var cokeNb: UILabel!
    @IBOutlet weak var juiceNb: UILabel!
    @IBOutlet weak var peachNb: UILabel!
    @IBOutlet weak var pineNb: UILabel!
    @IBOutlet weak var sojuNb: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*func addStorage {
        
    }
*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
