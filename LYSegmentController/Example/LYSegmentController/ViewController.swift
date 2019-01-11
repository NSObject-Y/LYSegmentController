//
//  ViewController.swift
//  LYSegmentController
//
//  Created by NSObject_Y on 01/10/2019.
//  Copyright (c) 2019 NSObject_Y. All rights reserved.
//

import UIKit
import LYSegmentController
class ViewController: UIViewController {

    private var segmentPageNav: SegmentSliderController?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setSegmentPageNav()
        
    }
    
   
    //MARK:搜索
    func setSegmentPageNav() -> Void {
        let titles = ["推荐","获取","无语"];
        segmentPageNav = SegmentSliderController(HHMade: self, titles: titles)        
        segmentPageNav?.delegate = self
        segmentPageNav?.childsViewControllers = [ThreeViewController(),SecViewController(),FirstViewController()]
        self.view.addSubview(segmentPageNav!)
        print("噶你")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController:SegementSliderDetegate{
    func segmentController(_ controller: SegmentSliderController, selectIndex index: Int) {
        
    }
    
    func selectImageClick() {
        print("搜索------")
    }
}

