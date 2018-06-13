//
//  City Details - 2.swift
//  garbageFacility
//
//  Created by OS X on 3/1/18.
//  Copyright © 2018 Will. All rights reserved.
//

import UIKit

var Leaguex: Int = 0
var Leaguey: Int = 0
var LeaguePop: Double = 0
var Pasx: Int = 0
var Pasy: Int = 0
var PasPop: Double = 0

class City_Details___2: UIViewController {

    
    @IBOutlet weak var Lx: UITextField!
    @IBOutlet weak var LxStep: UIStepper!
    @IBOutlet weak var Ly: UITextField!
    @IBOutlet weak var LyStep: UIStepper!
    @IBOutlet weak var LPop: UITextField!
    @IBOutlet weak var LPopSlider: UISlider!
    @IBAction func LxStepVal(_ sender: UIStepper) {
        Lx.text = "\(Int(LxStep.value))"
    }
    @IBAction func LyStepVal(_ sender: UIStepper) {
        Ly.text = "\(Int(LyStep.value))"
    }
    @IBAction func LPopSliderVal(_ sender: UISlider) {
        let slider = sender.value
        LPop.text = String(format: "%.2f", slider)
    }
    
    @IBOutlet weak var Px: UITextField!
    @IBOutlet weak var PxStep: UIStepper!
    @IBOutlet weak var Py: UITextField!
    @IBOutlet weak var PyStep: UIStepper!
    @IBOutlet weak var PPop: UITextField!
    @IBOutlet weak var PPopSlider: UISlider!
    @IBAction func PxStepVal(_ sender: UIStepper) {
        Px.text = "\(Int(PxStep.value))"
    }
    @IBAction func PyStepVal(_ sender: UIStepper) {
        Py.text = "\(Int(PyStep.value))"
    }
    @IBAction func PPopSliderVal(_ sender: UISlider) {
        let slider = sender.value
        PPop.text = String(format: "%.2f",slider)
    }
    
    @IBAction func compute(_ sender: UIButton) {
        Leaguex = Int(Lx.text!)!
        Leaguey = Int(Ly.text!)!
        LeaguePop = Double(LPop.text!)!
        Pasx = Int(Px.text!)!
        Pasy = Int(Py.text!)!
        PasPop = Double(PPop.text!)!
        
        //validations
        if(Leaguex <= 0 || Leaguex > 25 || Lx.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for League City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(Leaguey <= 0 || Leaguey > 25 || Ly.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for League City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(LeaguePop <= 0 || LeaguePop > 100 || LPop.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate population for League City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(Pasx <= 0 || Pasx > 25 || Px.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for Pasadena City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(Pasy <= 0 || Pasy > 25 || Py.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate co-ordinate x for Pasadena City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if(PasPop <= 0 || PasPop > 100 || PPop.text!.isEmpty)
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter appropriate population for Pasadena City", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        if((ClearLx == Pasx && ClearLy == Pasy) || (ClearLx == Leaguex && ClearLy == Leaguey) ||
            (Galvx == Pasx && Galvy == Pasy) || (Galvx == Leaguex && Galvy == Leaguey) ||
            (Leaguex == Pasx && Leaguey == Pasy) )
        {
            let alertUser = UIAlertController(title:"Alert", message:"Please enter different co-ordinates for cites.", preferredStyle: UIAlertControllerStyle.alert)
            let filled = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler: nil)
            alertUser.addAction(filled)
            self.present(alertUser, animated: true, completion: nil)
            return
        }
        
    }
    @IBAction func reset(_ sender: UIButton) {
        self.Lx.text = "1"
        self.Ly.text = "1"
        self.LPop.text = "1"
        self.Px.text = "1"
        self.Py.text = "1"
        self.PPop.text = "1"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Lx.resignFirstResponder()
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Lx.becomeFirstResponder()
        Lx.keyboardType = .numberPad
        Ly.keyboardType = .numberPad
        LPop.keyboardType = .numberPad
        Px.keyboardType = .numberPad
        Py.keyboardType = .numberPad
        PPop.keyboardType = .numberPad
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"GarbageImage.jpg" )!)
    }
}
