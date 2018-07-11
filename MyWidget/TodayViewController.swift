//
//  TodayViewController.swift
//  MyWidget
//
//  Created by Md. Kamrul Hasan on 7/11/18.
//  Copyright © 2018 Md. Kamrul Hasan. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    @IBAction func homeButtonTapped(_ sender: Any) {
        print("Home Button Tapped")
        let myAppUrl = URL(string: "demowidget://?home")!
        extensionContext?.open(myAppUrl, completionHandler: { (success) in
            if (!success) {
                // let the user know it failed
            }
        })
    }
    
    @IBAction func workButtonTapped(_ sender: Any) {
        let myAppUrl = URL(string: "demowidget://?work")!
        extensionContext?.open(myAppUrl, completionHandler: { (success) in
            if (!success) {
                // let the user know it failed
            }
        })
    }
    
    @IBAction func otherButtonTapped(_ sender: Any) {
        let myAppUrl = URL(string: "demowidget://?other")!
        extensionContext?.open(myAppUrl, completionHandler: { (success) in
            if (!success) {
                // let the user know it failed
            }
        })
    }
}
