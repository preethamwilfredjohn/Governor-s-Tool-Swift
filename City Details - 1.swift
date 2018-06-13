//
//  City Details - 1.swift
//  garbageFacility
//
//  Created by OS X on 3/1/18.
//  Copyright © 2018 Will. All rights reserved.
//

import UIKit

var ClearLx: Int = 0
var ClearLy: Int = 0
var ClearPop: Double = 0
var Galvx: Int = 0
var Galvy: Int = 0
var GalvPop: Double = 0

class City_Details___1: UIViewController {

    @IBOutlet weak var CLx: UITextField!
    @IBOutlet weak var CLxStepper: UIStepper!
    @IBOutlet weak var CLy: UITextField!
    @IBOutlet weak var CLyStep: UIStepper!
    @IBOutlet weak var CLPopSlider: UISlider!
    @IBOutlet weak var CLPop: UITextField!
    @IBAction func CLxStepVal(_ sender: UIStepper) {
        CLx.text = "\(Int(CLxStepper.value))"
    }
    
    @IBAction func CLyStepVal(_ sender: Any) {
        CLy.text = "\(Int(CLyStep.value))"
    }
    @IBAction func LPopSliderVal(_ sender: UISlider) {
        let slider = sender.value
        CLPop.text = String(format: "%.2f", slider)
    }
    
    @IBOutlet weak var Gx: UITextField!
    @IBOutlet weak var GxStep: UIStepper!
    @IBOutlet weak var Gy: UITextField!
    @IBOutlet weak var GyStep: UIStepper!
    @IBOutlet weak var GPop: UITextField!
    @IBOutlet weak var GPopSlider: UISlider!
    
    @IBAction func GxStepVal(_ sender: UIStepper) {
        Gx.text = "\(Int(GxStep.value))"
    }
    @IBAction func GyStepVal(_ sender: UIStepper) {
        Gy.text = "\(Int(GyStep.value))"
    }
    @IBAction func GPopSliderVal(_ sender: UISlider) {
        let slider = sender.value
        GPop.text = String(format: "%.2f", slider)
    }
    
    @IBAction func next(_ sender: UIButton) {
        ClearLx = Int(CLx.text!)!
        ClearLy = Int(CLy.text!)!
        ClearPop = Double(CLPop.text!)!
        Galvx = Int(Gx.text!)!
        Galvy = Int(Gy.text!)!
        GalvPop = Double(GPop.text!)!
        
        //validating fields
        if(ClearLx <= 0 || ClearLx > 25 || CLx.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for Clear Lake City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(ClearLy <= 0 || ClearLy > 25 || CLy.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate y for Clear Lake City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(ClearPop <= 0 || ClearPop > 100 || CLPop.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate population for Clear Lake City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(Galvx <= 0 || Galvx > 25 || Gx.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for Galveston City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(Galvy <= 0 || Galvy > 25 || Gy.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for Galveston City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(GalvPop <= 0 || GalvPop > 100 || GPop.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate population for Galveston City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(ClearLx == Galvx && ClearLy == Galvy)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter different co-ordinates for cites.", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
    }
    @IBAction func reset(_ sender: UIButton) {
        self.CLx.text = "1"
        self.CLy.text = "1"
        self.CLPop.text = "1"
        self.Gx.text = "1"
        self.Gy.text = "1"
        self.GPop.text = "1"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        CLx.resignFirstResponder()
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        CLx.becomeFirstResponder()
        CLx.keyboardType = .numberPad
        CLy.keyboardType = .numberPad
        Gx.keyboardType = .numberPad
        CLPop.keyboardType = .numberPad
        Gy.keyboardType = .numberPad
        GPop.keyboardType = .numberPad
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"GarbageImage.jpg" )!)
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
