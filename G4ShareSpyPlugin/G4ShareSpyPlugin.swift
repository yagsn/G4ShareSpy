//
//  G4ShareSpyPlugin.swift
//  G4ShareSpyPlugin
//
//  Created by Nathaniel Hamming on 2019-12-19.
//  Copyright © 2019 Mark Wilson. All rights reserved.
//

import os.log
import LoopKitUI
import G4ShareSpy

class G4ShareSpyPlugin: NSObject, CGMManagerUIPlugin {    
    private let log = OSLog(category: "G4ShareSpyPlugin")
    
    public var cgmManagerType: CGMManagerUI.Type? {
        return G4CGMManager.self
    }
    
    override init() {
        super.init()
        log.default("Instantiated")
    }
}
