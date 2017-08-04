//
//  ViewController.swift
//  CustomNavigation
//
//  Created by Rajat Bhatt on 04/08/17.
//  Copyright © 2017 Rajat Bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initializeAdminButtonNavigationBar(titleString: "Rajat Bhatt")
    }
    
    /// Set navigation bar with Admin Button
    func initializeAdminButtonNavigationBar(titleString: String) {
        let GAdminNavBGTintColor = UIColor(red: 53/255, green: 176/255, blue: 175/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = GAdminNavBGTintColor
        navigationController?.navigationBar.isTranslucent = false
        let backButtonImage : UIImage = UIImage(named: "ic_back")!
        let imageFrame = CGRect(x: 0, y: 0, width: backButtonImage.size.width, height: backButtonImage.size.height)
        let backButton = UIButton(frame: imageFrame)
        backButton.setImage(backButtonImage, for: UIControlState.normal)
        backButton.addTarget(self, action: #selector(navigateBack(sender:)), for: UIControlEvents.touchUpInside)
        let barButton = UIBarButtonItem(customView: backButton)
        navigationItem.setLeftBarButton(barButton, animated: true)
        let cameraButtonImage : UIImage = UIImage(named: "ic_back")!
        let cameraImageFrame = CGRect(x: 0, y: 0, width: cameraButtonImage.size.width, height: cameraButtonImage.size.height)
        let cameraButton = UIButton(frame: cameraImageFrame)
        cameraButton.setImage(cameraButtonImage, for: UIControlState.normal)
        cameraButton.addTarget(self, action: #selector(onClickCameraBarButtonItem(sender:)), for: UIControlEvents.touchUpInside)
        let cameraBarButton = UIBarButtonItem(customView: cameraButton)
        navigationItem.setRightBarButton(cameraBarButton, animated: true)
        let adminButton = UIButton()
        adminButton.setTitle(titleString, for: .normal)
        adminButton.setTitleColor(GAdminNavBGTintColor, for: .normal)
        adminButton.frame = CGRect(x: 0, y: 0, width: 110, height: 50)
        adminButton.sizeToFit()
        adminButton.frame.size.width += 30
        adminButton.layer.masksToBounds = true
        adminButton.layer.cornerRadius = adminButton.frame.size.height/2
        adminButton.backgroundColor = UIColor.white
        adminButton.addTarget(self, action: #selector(navigateBack(sender:)), for: UIControlEvents.touchUpInside)
        navigationItem.titleView = adminButton
    }
    
    
    /// Dismiss view controller.
    @objc func navigateBack(sender : UIButton) {
        print("title")
        _ = navigationController?.popViewController(animated: true)
    }
    
    /// Select Camera RightBarButton Item
    @objc func onClickCameraBarButtonItem(sender : UIButton) {
        //TODO: On Click of camera button
    }
}

