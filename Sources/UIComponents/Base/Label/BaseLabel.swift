//
//  BaseLabel.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 6.03.2025.
//

import UIKit

public final class BaseLabel: UILabel, ConfigurableUI {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func configure(with model: LabelModel) {
        self.text = model.text
        self.textColor = model.textColor
        self.font = model.font
        self.textAlignment = model.textAlignment
        self.numberOfLines = model.numberOfLines
        self.lineBreakMode = model.lineBreakMode ?? .byTruncatingTail
        self.isUserInteractionEnabled = model.isUserInteractionEnabled
        self.minimumScaleFactor = model.minimumScaleFactor ?? .zero
        self.adjustsFontSizeToFitWidth = model.adjustsFontSizeToFitWidth ?? false
        self.baselineAdjustment = model.baselineAdjustment ?? .alignBaselines
    }
}
