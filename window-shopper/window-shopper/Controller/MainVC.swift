//
//  MainVC.swift
//  window-shopper
//
//  Created by Alfonso Rojas on 1/22/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size
                                                    .width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.6107810736, blue: 0.1789371073, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        //adds an accessory that goes above the first responder or in this case just a keyboard
        wageTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
       //when view first loads, we want the labels hidden
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate(){
//        guard let wage = Double(wageTxt.text!), let price = Double(priceTxt.text!) else{return}
//        print(price/wage)
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
   
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

