//
//  UIViewExtensions.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//


import UIKit

// MARK: Configuración views
extension UIView {
    func configure(cornerRadius: CGFloat = 15.0,
                   shadowOpacity: Float = 1,
                   with shadowColor: UIColor = UIColor.gray) {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 6.0
        layer.shadowOpacity = shadowOpacity
    }
}
