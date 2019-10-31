//
//  ViewController.swift
//  gRPCTest
//
//  Created by Trace Tschida on 9/27/19.
//  Copyright © 2019 Trace Tschida. All rights reserved.
//

import UIKit
import Foundation
import CoreGraphics

class ViewController: UIViewController {
    
    
    @IBOutlet weak var MainTextField: UITextField!
    @IBOutlet weak var MainLabel: UILabel!
    
    let viewModel : ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpBindings()
    }
    
    fileprivate func setUpBindings() {
        MainTextField.bind(with: viewModel.mainTextEntry)
        MainLabel.bind(with: viewModel.mainTextValue)
    }


}

