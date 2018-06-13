//
//  CalculatorModal1.swift
//  garbageFacility
//
//  Created by OS X on 3/1/18.
//  Copyright © 2018 Will. All rights reserved.
//

import Foundation
import Foundation
class CalculatorModal1{
    var CLx: Int
    var CLy: Int
    var CLPop: Double
    var Lx: Int
    var Ly: Int
    var LPop: Double
    var Gx: Int
    var Gy: Int
    var GPop: Double
    var Px: Int
    var Py: Int
    var PPop: Double
    
    init (_ clearx: Int, _ clearY: Int, _ clearPop: Double, _ galx: Int, _ galy: Int, _ galPop: Double, _ leaguex: Int, _ leaguey: Int, _ leaguePop: Double, _ pasx: Int, _ pasy: Int,
          _ pasPop: Double){
        CLx = clearx
        CLy = clearY
        CLPop = clearPop * 1000
        Gx = galx
        Gy = galy
        GPop = galPop * 1000
        Lx = leaguex
        Ly = leaguey
        LPop = leaguePop * 1000
        Px = pasx
        Py = pasy
        PPop = pasPop * 1000
    }
    
    func unhappinessCalc() -> (minUnhappiness: Double, minxCoord: Int, minyCoord: Int){
        let totalPop: Double = CLPop + LPop + GPop + PPop
        var minUnhappiness: Double = 0.0
        var minxCoord: Int = 1
        var minyCoord: Int = 1
        for i in 1 ..< 26 {
            for j in 1 ..< 26 {
                let ClearUnhapp = CLUnhappy( i, j)
                let GalvesUnhapp = GUnhappy(i, j)
                let LeagueUnhapp = LUnhappy(i, j)
                let PasaUnhapp = PUnhappy(i, j)
                
                let avgUnhap : Double = Double(ClearUnhapp + LeagueUnhapp + GalvesUnhapp + PasaUnhapp ) / totalPop
                if(i == 1 && j == 1){
                    minUnhappiness = avgUnhap
                    minxCoord = i
                    minyCoord = j
                }
                else{
                    if(minUnhappiness > avgUnhap){
                        minUnhappiness = avgUnhap
                        minyCoord = j
                        minxCoord = i
                    }
                }
            }
        }
        return (minUnhappiness, minxCoord, minyCoord)
    }
    
    func CLUnhappy (_ i: Int, _ j: Int ) -> Int{
        var CLUnhappiness: Int = 0
        
        let xDist = abs(CLx - i)
        let yDist = abs(CLy - j)
        let distance = sqrt(Double((pow(Double(xDist), 2.0) + pow(Double(yDist), 2.0)))) + 1
        if (distance <= 3) {
            CLUnhappiness = 1000000
        }
        else{
                CLUnhappiness = Int(CLPop / Double(distance))
        }
        return CLUnhappiness
    }
    
    
    func GUnhappy (_ i: Int, _ j: Int) -> Int{
        var GUnhappiness: Int = 0
        let xDist = abs(Gx - i)
        let yDist = abs(Gy - j)
        let distance = sqrt(Double((pow(Double(xDist),2.0) + pow(Double(yDist),2.0))))  + 1
        if (distance <= 3) {
            GUnhappiness = 1000000
        }
        else{
                GUnhappiness = Int(GPop / Double(distance))
            }
        return GUnhappiness
    }
    func LUnhappy (_ i: Int, _ j: Int) -> Int{
        var LUnhappiness: Int = 0
        let xDist = abs(Lx - i)
        let yDist = abs(Ly - j)
        let distance = sqrt(Double((pow(Double(xDist),2.0) + pow(Double(yDist),2.0)))) + 1
        if (distance <= 3) {
            LUnhappiness = 1000000
        }
        else{
            LUnhappiness = Int(LPop / Double(distance))
        }
        return LUnhappiness
    }
    func PUnhappy (_ i: Int, _ j: Int) -> Int{
        var PUnhappiness: Int = 0
        let xDist = abs(Px - i)
        let yDist = abs(Py - j)
        let distance = sqrt(Double((pow(Double(xDist),2.0) + pow(Double(yDist),2.0)))) + 1
        if (distance <= 3) {
            PUnhappiness = 1000000
        }
        else{
                PUnhappiness = Int(PPop / Double(distance))
            }
        return PUnhappiness
    }
}
