//
//  TestCollectionViewCell.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 8.03.2025.
//

import UIKit

public class TestCollectionViewCell: UICollectionViewCell {

    private let stackView: UIStackView
    private let imageView: UIImageView
    private let label: UILabel

    override public init(frame: CGRect) {
        stackView = UIStackView()
        imageView = UIImageView()
        label = UILabel()

        super.init(frame: frame)
        
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        stackView = UIStackView()
        imageView = UIImageView()
        label = UILabel()

        super.init(coder: coder)
        
        setupView()
    }
    
    private func setupView() {
        // Stack View
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(stackView)
        
        // Image View
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(imageView)
        
        // Label
        label.text = "Label"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(label)

        // Constraints for StackView
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        // Constraints for ImageView and Label
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 106.5),
            label.heightAnchor.constraint(equalToConstant: 20.5)
        ])
    }
    
    public func configure(image: UIImage?, text: String) {
        imageView.image = image
        label.text = text
    }
}
