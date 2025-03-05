//
//  ImageViewModel.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 6.03.2025.
//

import UIKit

public struct ImageViewModel: UIModel {
    typealias UIComponent = BaseImageView
    
    public let image: UIImage
    public let isHidden: Bool
    public let contentMode: UIView.ContentMode
    public let backgroundColor: UIColor
    public let isUserInteractionEnabled: Bool
    public let tintColor: UIColor?
    public let layerCornerRadius: CGFloat?
    public let clipsToBounds: Bool?
    
    public init(
        image: UIImage,
        isHidden: Bool,
        contentMode: UIView.ContentMode,
        backgroundColor: UIColor,
        isUserInteractionEnabled: Bool,
        tintColor: UIColor?,
        layerCornerRadius: CGFloat?,
        clipsToBounds: Bool?
    ) {
        self.image = image
        self.isHidden = isHidden
        self.contentMode = contentMode
        self.backgroundColor = backgroundColor
        self.isUserInteractionEnabled = isUserInteractionEnabled
        self.tintColor = tintColor
        self.layerCornerRadius = layerCornerRadius
        self.clipsToBounds = clipsToBounds
    }
}
