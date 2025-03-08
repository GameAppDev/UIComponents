//
//  TestCollectionViewCell.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 8.03.2025.
//

import UIKit

public class TestCollectionViewCell: UICollectionViewCell {

    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public static func getNib() -> UINib {
        return UINib(nibName: "TestCollectionViewCell", bundle: Bundle.module)
    }
}
