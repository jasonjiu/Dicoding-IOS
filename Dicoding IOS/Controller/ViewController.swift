//
//  ViewController.swift
//  Dicoding IOS
//
//  Created by PROSIA on 30/07/20.
//  Copyright © 2020 Jason Dicoding IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editAction(_ sender: Any) {
        let alert = UIAlertController(title: "Apakah Anda berniat untuk mengubah profil?", message: "Anda dapat memperbarui profil Anda sekarang juga.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ya", style: .default, handler: {action in print("Mengganti profile")}
        ))
        
        alert.addAction(UIAlertAction(title: "Tidak", style: .cancel, handler: {action in print("Membatalkan ubah profile")}
        ))
        
        self.present(alert, animated: true)
    }
    
}

