//
//  BaseImageView.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 5.03.2025.
//

import UIKit

public final class BaseImageView: UIImageView, ConfigurableUI {
    
    public init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: ImageViewModel) {
        self.image = model.image
        self.isHidden = model.isHidden
        self.contentMode = model.contentMode
        self.backgroundColor = model.backgroundColor
        self.isUserInteractionEnabled = model.isUserInteractionEnabled
        self.tintColor = model.tintColor
        self.layer.cornerRadius = model.layerCornerRadius ?? .zero
        self.clipsToBounds = model.clipsToBounds ?? false
    }
}
