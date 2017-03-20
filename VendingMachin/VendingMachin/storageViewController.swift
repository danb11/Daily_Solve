//
//  storageViewController.swift
//  VendingMachin
//
//  Created by Danb on 2017. 3. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class storageViewController: UIViewController {
    @IBAction func backBt(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    var coffeestock = Dictionary<String,Int>()
    
    @IBAction func coffeeSt(_ sender: Any) {
        var coffeeN = Int()
        coffeeN += 1
        coffeeNb.text = String(coffeeN + Int(coffeeNb.text!)!)
        coffeestock["coffee"] = coffeeN + Int(coffeeNb.text!)!
        print(coffeestock)
    }
    
    @IBAction func cokeSt(_ sender: Any) {
        var cokeN = Int()
        cokeN += 1
        cokeNb.text = String(cokeN + Int(cokeNb.text!)!)
    }
    @IBAction func juiceSt(_ sender: Any) {
        var juiceN = Int()
        juiceN += 1
        juiceNb.text = String(juiceN + Int(juiceNb.text!)!)
    }
    @IBAction func peachSt(_ sender: Any) {
        var peachN = Int()
        peachN += 1
        peachNb.text = String(peachN + Int(peachNb.text!)!)
    }
    @IBAction func pineSt(_ sender: Any) {
        var pineN = Int()
        pineN += 1
        pineNb.text = String(pineN + Int(pineNb.text!)!)
    }
    @IBAction func sojuSt(_ sender: Any) {
        var sojuN = Int()
        sojuN += 1
        sojuNb.text = String(sojuN + Int(sojuNb.text!)!)
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
