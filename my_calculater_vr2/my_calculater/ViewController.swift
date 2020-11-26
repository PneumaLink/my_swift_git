//
//  ViewController.swift
//  my_calculater
//
//  Created by 김효민 on 2020/11/19.
//

import UIKit
var answer:Double = 0
var nbr:Int = 0
var calculation_log:Array<Any> = Array<Any>()
var log_board:String = ""
var marke:String = ""
var box:Double = 0

class ViewController: UIViewController {

    @IBOutlet weak var main_name: UILabel!
    @IBOutlet weak var nbr_label: UILabel!
    @IBOutlet weak var log_label: UILabel!
    @IBAction func bt_clear(_ sender: Any) {

    }
    @IBAction func bn0(_ sender: UIButton) {
        nbr *= 10
        nbr_label.text = "\(nbr)"
    }
    @IBAction func bt1(_ sender: UIButton) {
        nbr *= 10
        nbr += 1
        nbr_label.text = "\(nbr)"
    }
    @IBAction func bn2(_ sender: UIButton) {
        nbr *= 10
        nbr += 2
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn3(_ sender: UIButton) {
        nbr *= 10
        nbr += 3
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn4(_ sender: Any) {
        nbr *= 10
        nbr += 4
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn5(_ sender: Any) {
        nbr *= 10
        nbr += 5
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn6(_ sender: Any) {
        nbr *= 10
        nbr += 6
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn7(_ sender: Any) {
        nbr *= 10
        nbr += 7
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn8(_ sender: Any) {
        nbr *= 10
        nbr += 8
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn9(_ sender: Any) {
        nbr *= 10
        nbr += 9
        nbr_label.text = "\(nbr)"
    }
    @IBAction func tn_equl(_ sender: Any) {
        calculation_log.append(marke)
        calculation_log.append(nbr)
        for part in calculation_log{
            if (part is String){
                if (strcmp("\(part)", "+") == 0){
                    answer = answer + box
                }else if (strcmp("\(part)", "-") == 0){
                    answer = answer - box
                }else if (strcmp("\(part)", "-") == 0){
                    answer = answer * box
                }else if (strcmp("\(part)", "-") == 0){
                    answer = answer / box
                }
            }else{
                box = part as! Double
            }
        }
        nbr_label.text = "\(answer)"
        nbr = 0
    }
    @IBAction func tn_can(_ sender: Any) {

    }
    @IBAction func tn_add(_ sender: Any) {
        if (!calculation_log.isEmpty){
            calculation_log.append(marke)
        }
        marke = "+"
        calculation_log.append(nbr)
        nbr = 0
    }
    @IBAction func tn_sub(_ sender: Any) {
        if (!calculation_log.isEmpty){
            calculation_log.append(marke)
        }
        marke = "-"
        calculation_log.append(nbr)
        nbr = 0
    }
    @IBAction func tn_mul(_ sender: Any) {
        if (!calculation_log.isEmpty){
            calculation_log.append(marke)
        }
        marke = "*"
        calculation_log.append(nbr)
        nbr = 0
    }
    @IBAction func tn_div(_ sender: Any) {
        if (!calculation_log.isEmpty){
            calculation_log.append(marke)
        }
        marke = "/"
        calculation_log.append(nbr)
        nbr = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        main_name.textAlignment = .center
        nbr_label.textAlignment = .center
        log_label.textAlignment = .center
        nbr_label.text = "0"
        log_label.text = log_board
    }
}
