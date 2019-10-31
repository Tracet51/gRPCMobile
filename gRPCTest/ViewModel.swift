//
//  ViewModel.swift
//  gRPCTest
//
//  Created by Trace Tschida on 9/27/19.
//  Copyright © 2019 Trace Tschida. All rights reserved.
//

import Foundation
import SwiftGRPC

class ViewModel {
    
    let service = MainScreen_MainScreenServiceClient(address: "127.0.0.1:5051", secure: false)
    var mainTextEntry = Observable<String>()
    var mainTextValue = Observable<String>()
    var request = MainScreen_Entry()
    var response = MainScreen_LabelValue()
    
    var test = Observable<MainScreen_LabelValue>()
    
    init() {
        
        
        mainTextEntry.bind(to: {[unowned self](oberser, value) -> Void in
            var message = MainScreen_Entry()
            message.text = value
            _ = try? self.service.updateLabel(message, completion: {(labelValue, callResult) -> Void in
                self.mainTextValue.value = labelValue?.text
            })
        })
    }
}
