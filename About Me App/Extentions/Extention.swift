//
//  Extention.swift
//  About Me App
//
//  Created by Alexey Elfimov on 01.11.2024.
//

import UIKit

func addVerticalGradientLayer() {
    let primaryColor = UIColor(
        red: 255/255,
        green: 182/255,
        blue: 193/255,
        alpha: 1
    )
    let secondaryColor = UIColor(
        red: 173/255,
        green: 216/255,
        blue: 230/255,
        alpha: 1
    )

    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = bounds
    gradientLayer.colors = [primaryColor.cgColor, secondaryColor.cgColor]
    gradientLayer.locations = [0.0, 1.0]
    gradientLayer.startPoint = CGPoint(x: 0, y: 0)
    gradientLayer.endPoint = CGPoint(x: 0, y: 1)
    layer.insertSublayer(gradientLayer, at: 0)
}
