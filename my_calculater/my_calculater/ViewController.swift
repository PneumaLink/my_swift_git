//
//  ViewController.swift
//  my_calculater
//
//  Created by 김효민 on 2020/11/19.
//

import UIKit
var nbr:Int = 0
var answer:Double = 0
var marke:String = ""


class ViewController: UIViewController {

    @IBOutlet weak var main_name: UILabel!
    @IBOutlet weak var nbr_label: UILabel!
    @IBAction func bt_clear(_ sender: Any) {
        nbr = 0
        answer = 0
        marke = ""
        nbr_label.text = String(nbr)
    }
    @IBAction func bn0(_ sender: UIButton) {
        nbr *= 10
        nbr_label.text = String(nbr)
    }
    @IBAction func bt1(_ sender: UIButton) {
        nbr *= 10
        nbr += 1
        nbr_label.text = String(nbr)
    }
    @IBAction func bn2(_ sender: UIButton) {
        nbr *= 10
        nbr += 2
        nbr_label.text = String(nbr)
    }
    @IBAction func tn3(_ sender: UIButton) {
        nbr *= 10
        nbr += 3
        nbr_label.text = String(nbr)
    }
    @IBAction func tn4(_ sender: Any) {
        nbr *= 10
        nbr += 4
        nbr_label.text = String(nbr)
    }
    @IBAction func tn5(_ sender: Any) {
        nbr *= 10
        nbr += 5
        nbr_label.text = String(nbr)
    }
    @IBAction func tn6(_ sender: Any) {
        nbr *= 10
        nbr += 6
        nbr_label.text = String(nbr)
    }
    @IBAction func tn7(_ sender: Any) {
        nbr *= 10
        nbr += 7
        nbr_label.text = String(nbr)
    }
    @IBAction func tn8(_ sender: Any) {
        nbr *= 10
        nbr += 8
        nbr_label.text = String(nbr)
    }
    @IBAction func tn9(_ sender: Any) {
        nbr *= 10
        nbr += 9
        nbr_label.text = String(nbr)
    }
    @IBAction func tn_equl(_ sender: Any) {
        if (strcmp(marke, "+") == 0){
            answer = answer + Double(nbr)
        }else if(strcmp(marke, "-") == 0){
            answer = answer - Double(nbr)
        }else if(strcmp(marke, "*") == 0){
            answer = answer * Double(nbr)
        }else if(strcmp(marke, "/") == 0){
            answer = answer / Double(nbr)
        }
        marke = ""
        nbr = 0
        nbr_label.text = String(answer)
    }
    @IBAction func tn_can(_ sender: Any) {
        nbr /= 10
        nbr_label.text = String(nbr)
    }
    @IBAction func tn_add(_ sender: Any) {
        marke = "+"
        answer = Double(nbr)
        nbr = 0
        nbr_label.text = "\(String(answer)) + "
    }
    @IBAction func tn_sub(_ sender: Any) {
        marke = "-"
        answer = Double(nbr)
        nbr = 0
        nbr_label.text = "\(String(answer)) - "
    }
    @IBAction func tn_mul(_ sender: Any) {
        marke = "*"
        answer = Double(nbr)
        nbr = 0
        nbr_label.text = "\(String(answer)) * "
    }
    @IBAction func tn_div(_ sender: Any) {
        marke = "/"
        answer = Double(nbr)
        nbr = 0
        nbr_label.text = "\(String(answer)) / "
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        main_name.textAlignment = .center
        nbr_label.textAlignment = .center
        nbr_label.text = String(nbr)
    }
}
