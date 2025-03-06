//
//  InfoView.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 5.03.2025.
//

import UIKit

public class InfoView: UIView {
    
    // MARK: Outlets
    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var infoImageView: BaseImageView!
    @IBOutlet private weak var infoLabel: BaseLabel!
    
    // MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)  // Bu satır çok önemli!
        commonInit()  // commonInit metodunu burada çağırıyoruz
    }
    
    private func commonInit() {
        // XIB dosyasını yüklemek için
        Bundle(for: InfoView.self).loadNibNamed("InfoView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = bounds
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
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

public final class InfoContainerView: InfoView {
    
}
