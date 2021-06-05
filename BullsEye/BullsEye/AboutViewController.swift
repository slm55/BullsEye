//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Islam Shamkhanov on 23.05.2021.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
   @IBAction func close() {
        dismiss(animated: true, completion: nil)
   }

}
