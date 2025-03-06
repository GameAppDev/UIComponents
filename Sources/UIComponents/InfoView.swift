//
//  InfoView.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 5.03.2025.
//

import UIKit

public class InfoView: UIView {
    
    // MARK: Outlets
    @IBOutlet private weak var infoImageView: BaseImageView!
    @IBOutlet private weak var infoLabel: BaseLabel!
    
    static var bundle: Bundle {
        return Bundle.module
    }
    
    // 📌 Nib dosyasını SPM içindeki bundle ile yüklüyoruz.
    public class func instanceFromNib() -> UIView {
        guard let view = UINib(
            nibName: "InfoView",
            bundle: bundle
        ).instantiate(withOwner: nil,
                      options: nil).first as? InfoView
        else { return UIView() }
        
        return view
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
    
    // MARK: Methods
    private func setupView() {
        // Gerekli herhangi bir özelleştirme yapılabilir
    }
    
    public func configureViews(imageViewModel: ImageViewModel, labelModel: LabelModel) {
        infoImageView.configure(with: imageViewModel)
        infoLabel.configure(with: labelModel)
    }
}
