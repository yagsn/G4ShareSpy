//
//  G4ShareSpyPlugin.swift
//  G4ShareSpyPlugin
//
//  Created by Nathaniel Hamming on 2019-12-19.
//  Copyright © 2019 Mark Wilson. All rights reserved.
//

import Foundation
import LoopKitUI
import G4ShareSpy
import os.log

class G4ShareSpyPlugin: NSObject, LoopUIPlugin {
    
    private let log = OSLog(category: "G4ShareSpyPlugin")
    
    public var pumpManagerType: PumpManagerUI.Type? {
        return nil
    }
    
    public var cgmManagerType: CGMManagerUI.Type? {
        return G4CGMManager.self
    }
    
    override init() {
        super.init()
        log.default("G4ShareSpyPlugin Instantiated")
    }
}
