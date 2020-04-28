//
//  ViewController.swift
//  Target
//
//  Created by Anna Luchechko on 27.04.2020.
//  Copyright © 2020 Anna Luchechko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let boxSize = getBoxSize(widthScreenSide: view.frame.size.width, heightScreenSide: view.frame.size.height)
        drawBox(boxSize: boxSize, origin: getBoxOrigin(widthScreenSide: view.frame.size.width, heightScreenSide: view.frame.size.height, boxSize: boxSize) )
    }

    func getBoxSize(widthScreenSide:CGFloat, heightScreenSide:CGFloat) -> CGSize {
        let boxSize = widthScreenSide - 50
    
        return CGSize(width: boxSize, height: boxSize)
    }
    
    func getBoxOrigin(widthScreenSide:CGFloat, heightScreenSide:CGFloat, boxSize: CGSize) -> CGPoint {
        let yOrigin = (heightScreenSide - boxSize.height) / 2
        let xOrigin = (widthScreenSide - boxSize.width) / 2

        return CGPoint(x: xOrigin, y: yOrigin)
    }
    
    func drawBox(boxSize: CGSize, origin: CGPoint) {
        let box = UIView()
        box.frame.size.width = boxSize.width
        box.frame.size.height = boxSize.width
        box.frame.origin.x = origin.x
        box.frame.origin.y = origin.y
        box.backgroundColor = .magenta
        self.view.addSubview(box)
    }

}
