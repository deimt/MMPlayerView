//
//  DemoListViewController.swift
//  MMPlayerView_Example
//
//  Created by Millman on 2019/12/24.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import SwiftUI
class DemoListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func swiftUIDemo(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: PlayerListView.init(dismiss: {
            self.dismiss(animated: true, completion: nil)
        }))
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
//
//final class SettingsViewController: UIHostingController<PlayerListView> {
//    required init?(coder: NSCoder) {
//        super.init(coder: coder, rootView: PlayerListView())
//        rootView.dismiss = dismiss
//
//    }
//
//    func dismiss() {
//        dismiss(animated: true, completion: nil)
//    }
//}