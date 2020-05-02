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

        drawTarget(circleCount: 3, widthScreenSide: self.view.frame.size.width, heightScreenSide: self.view.frame.size.height)
    }

    func getBoxSize(widthScreenSide: CGFloat, boxNumber: CGFloat) -> CGSize {
        let boxSize = widthScreenSide - (widthScreenSide / 10) * boxNumber * 2
        return CGSize(width: boxSize, height: boxSize)
    }
    
    func getBoxOrigin(widthScreenSide:CGFloat, heightScreenSide:CGFloat, boxSize: CGSize) -> CGPoint {
        let yOrigin = (heightScreenSide - boxSize.height) / 2
        let xOrigin = (widthScreenSide - boxSize.width) / 2
        return CGPoint(x: xOrigin, y: yOrigin)
    }
    
    func drawCircle(boxSize: CGSize, origin: CGPoint, boxColor: UIColor) {
        let box = UIView()
        box.frame.size.width = boxSize.width
        box.frame.size.height = boxSize.width
        box.frame.origin.x = origin.x
        box.frame.origin.y = origin.y
        box.backgroundColor = boxColor
        box.layer.cornerRadius = boxSize.width / 2
        self.view.addSubview(box)
    }
    
    func drawTarget(circleCount: Int, widthScreenSide:CGFloat, heightScreenSide:CGFloat) {
        for index in 0..<circleCount {
            let boxNumber = CGFloat(index + 1)
            let boxSize = getBoxSize(widthScreenSide: widthScreenSide, boxNumber: boxNumber)
            let boxOrigin = getBoxOrigin(widthScreenSide: widthScreenSide, heightScreenSide: heightScreenSide, boxSize: boxSize)
            var boxColor: UIColor = .magenta
            if (Int(boxNumber) % 2 == 0) {
                boxColor = .blue
            } else {
                boxColor = .magenta
            }
            drawCircle(boxSize: boxSize, origin: boxOrigin, boxColor: boxColor)
        }
    }

}
