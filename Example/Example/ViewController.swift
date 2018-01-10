//
//  ViewController.swift
//  Example
//
//  Created by iOS Developer on 1/10/18.
//  Copyright © 2018 Genysis. All rights reserved.
//

import UIKit
import SideMenuDrawer

class ViewController: UIViewController , DrawerControllerDelegate{
    
    
    
    var drawer = SideMenuDrawer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "View Controller"
        view.backgroundColor = UIColor.groupTableViewBackground
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"menu"), style: .done, target: self, action: #selector(handleMenu))
    }
    
    
    
    func didTapButton(type: ButtonType) {
        print(type)
    }
    
    
    
    
    @objc fileprivate func handleMenu(){
        var array = [DrawerModel]()
        
        let Notification = DrawerModel.init(icon: #imageLiteral(resourceName: "icon"), text: "Notification", controller: VC2())
        let Favourite = DrawerModel.init(icon: #imageLiteral(resourceName: "bookmark_ribbon"), text: "Favourite", controller: VC2())
        let Comments = DrawerModel.init(icon: #imageLiteral(resourceName: "comments"), text: "Comments", controller: VC2())
        let About = DrawerModel.init(icon: #imageLiteral(resourceName: "about"), text: "About", controller: VC2())
        let Settings = DrawerModel.init(icon: #imageLiteral(resourceName: "settings"), text: "Settings", controller: VC2())
        
        
        array.append(Notification)
        array.append(Favourite)
        array.append(Comments)
        array.append(About)
        array.append(Settings)
       
        drawer = SideMenuDrawer(elements: array, controller: self)
        drawer.delegate = self
        drawer.show()
        
        
    }
    
    
    func pushTo(viewController: UIViewController) {
        viewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}


