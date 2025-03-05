//
//  InfoView.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 5.03.2025.
//

import UIKit

public final class InfoView: UIView {
    
    // MARK: Outlets
    @IBOutlet private var containerView: UIView!
    @IBOutlet private weak var infoImageView: BaseImageView!
    @IBOutlet private weak var infoLabel: BaseLabel!
    
    // MARK: - Init
     public override init(frame: CGRect) {
         super.init(frame: frame)
         commonInit()
     }
     
     public required init?(coder: NSCoder) {
         super.init(coder: coder)
         commonInit()
     }
     
     private func commonInit() {
         // Bundle.module ile InfoView.xib dosyasını yükle
         let bundle = Bundle.module
         bundle.loadNibNamed("InfoView", owner: self, options: nil)
         
         addSubview(containerView)
         containerView.frame = bounds
         
         // Auto Layout Constraints
         containerView.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
             containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
             containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
             containerView.topAnchor.constraint(equalTo: topAnchor),
             containerView.bottomAnchor.constraint(equalTo: bottomAnchor)
         ])
     }
     
     // MARK: - Override Methods
     public override func layoutSubviews() {
         super.layoutSubviews()
         setupView()
     }
     
     // MARK: - Methods
     private func setupView() {
         // Özel düzenlemeler yapılabilir.
     }
     
     public func configureViews(imageViewModel: ImageViewModel, labelModel: LabelModel) {
         // ImageView ve Label'ı yapılandırıyoruz.
         infoImageView.configure(with: imageViewModel)
         infoLabel.configure(with: labelModel)
     }
 }
