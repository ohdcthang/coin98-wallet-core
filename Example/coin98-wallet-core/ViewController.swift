//
//  ViewController.swift
//  coin98-wallet-core
//
//  Created by 76133582 on 05/03/2024.
//  Copyright (c) 2024 76133582. All rights reserved.
//

import UIKit
import coin98_wallet_core

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let abc = Wallet()
        
        let mnemonic = "bacon grit piece velvet shallow mail hidden obey visa copy race certain"
        
        let path = "44'/60'/0'/0/0"
        
        
        let rs = abc.createWallet(mnemonic: mnemonic, path: path)
        
        print(rs)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

