import UIKit

public final class InfoView: UIView {
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let infoImageView: BaseImageView = {
        let imageView = BaseImageView()
        imageView.image = UIImage(systemName: "info.circle.fill")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let infoLabel: BaseLabel = {
        let label = BaseLabel()
        label.text = "Bilgi mesajı"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(stackView)
        stackView.addArrangedSubview(infoImageView)
        stackView.addArrangedSubview(infoLabel)
        
        // Otomatik layout ayarları
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            infoImageView.widthAnchor.constraint(equalToConstant: 24),
            infoImageView.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    public func configureViews(imageViewModel: ImageViewModel, labelModel: LabelModel) {
        infoImageView.configure(with: imageViewModel)
        infoLabel.configure(with: labelModel)
    }
}
