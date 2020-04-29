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
        let boxSize = getBoxSize(widthScreenSide: view.frame.size.width,
                                 heightScreenSide: view.frame.size.height)
        
        let secondBoxSize = getSecondBoxSize(widthScreenSide: view.frame.size.width,
                                 heightScreenSide: view.frame.size.height)
        
        let thirdBoxSize = getThirdBoxSize(widthScreenSide: view.frame.size.width,
                                 heightScreenSide: view.frame.size.height)
        
        drawBox(boxSize: boxSize, origin: getBoxOrigin(widthScreenSide: view.frame.size.width, heightScreenSide: view.frame.size.height, boxSize: boxSize), boxColor: .blue)
        drawBox(boxSize: secondBoxSize, origin: getBoxOrigin(widthScreenSide: view.frame.size.width, heightScreenSide: view.frame.size.height, boxSize: secondBoxSize), boxColor: .purple )
        drawBox(boxSize: thirdBoxSize, origin: getBoxOrigin(widthScreenSide: view.frame.size.width, heightScreenSide: view.frame.size.height, boxSize: thirdBoxSize), boxColor: .blue)
    }

    func getBoxSize(widthScreenSide:CGFloat, heightScreenSide:CGFloat) -> CGSize {
        let boxSize = widthScreenSide - widthScreenSide / 10
    
        return CGSize(width: boxSize, height: boxSize)
    }
    
    func getSecondBoxSize(widthScreenSide:CGFloat, heightScreenSide:CGFloat) -> CGSize {
        let boxSize = widthScreenSide - widthScreenSide / 4
    
        return CGSize(width: boxSize, height: boxSize)
    }
    
    func getThirdBoxSize(widthScreenSide:CGFloat, heightScreenSide:CGFloat) -> CGSize {
        let boxSize = widthScreenSide - widthScreenSide / 2
    
        return CGSize(width: boxSize, height: boxSize)
    }
    
    func getBoxOrigin(widthScreenSide:CGFloat, heightScreenSide:CGFloat, boxSize: CGSize) -> CGPoint {
        let yOrigin = (heightScreenSide - boxSize.height) / 2
        let xOrigin = (widthScreenSide - boxSize.width) / 2

        return CGPoint(x: xOrigin, y: yOrigin)
    }
    
    func drawBox(boxSize: CGSize, origin: CGPoint, boxColor: UIColor) {
        let box = UIView()
        box.frame.size.width = boxSize.width
        box.frame.size.height = boxSize.width
        box.frame.origin.x = origin.x
        box.frame.origin.y = origin.y
        box.backgroundColor = boxColor
        box.layer.cornerRadius = boxSize.width / 2
        self.view.addSubview(box)
    }

}
