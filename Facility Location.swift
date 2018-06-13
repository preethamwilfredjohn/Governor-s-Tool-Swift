//
//  Facility Location.swift
//  garbageFacility
//
//  Created by OS X on 3/1/18.
//  Copyright © 2018 Will. All rights reserved.
//

import UIKit

class Facility_Location: UIViewController {

    @IBOutlet weak var Unhappiness: UILabel!
    @IBOutlet weak var coordx: UILabel!
    @IBOutlet weak var coordy: UILabel!
    @IBOutlet weak var UnhappinessLabel: UILabel!
    var calculator : CalculatorModal1!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"GarbageImage.jpg" )!)
        Unhappiness.isHidden = true
        UnhappinessLabel.isHidden = true
    }
    override func viewDidAppear(_ animated: Bool) {
        
        //Controller accessing the modal
        calculator = CalculatorModal1(ClearLx, ClearLy, ClearPop, Galvx, Galvy, GalvPop, Leaguex, Leaguey, LeaguePop, Pasx, Pasy, PasPop)
        let facilityLoc = calculator.unhappinessCalc()
        //passing values from modal to view using controller
        
        Unhappiness.text = String(format: "%.3f", "\(facilityLoc.0)")
        coordx.text = "\(facilityLoc.1)"
        coordy.text = "\(facilityLoc.2)"
    }
}
