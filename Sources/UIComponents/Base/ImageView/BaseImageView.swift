//
//  BaseImageView.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 5.03.2025.
//

import UIKit

public final class BaseImageView: UIImageView, ConfigurableUI {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
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
