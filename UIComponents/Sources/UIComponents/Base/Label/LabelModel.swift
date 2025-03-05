//
//  LabelModel.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 6.03.2025.
//

import UIKit

public struct LabelModel: UIModel {
    typealias UIComponent = BaseLabel
    
    public let text: String
    public let textColor: UIColor
    public let font: UIFont
    public let textAlignment: NSTextAlignment
    public let numberOfLines: Int
    public let lineBreakMode: NSLineBreakMode?
    public let isUserInteractionEnabled: Bool
    public let minimumScaleFactor: CGFloat?
    public let adjustsFontSizeToFitWidth: Bool?
    public let baselineAdjustment: UIBaselineAdjustment?
    
    public init(
        text: String,
        textColor: UIColor,
        font: UIFont,
        textAlignment: NSTextAlignment,
        numberOfLines: Int,
        lineBreakMode: NSLineBreakMode?,
        isUserInteractionEnabled: Bool,
        minimumScaleFactor: CGFloat?,
        adjustsFontSizeToFitWidth: Bool?,
        baselineAdjustment: UIBaselineAdjustment?
    ) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
        self.lineBreakMode = lineBreakMode
        self.isUserInteractionEnabled = isUserInteractionEnabled
        self.minimumScaleFactor = minimumScaleFactor
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        self.baselineAdjustment = baselineAdjustment
    }
}
