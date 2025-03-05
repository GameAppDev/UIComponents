//
//  ConfigurableUI.swift
//  UIComponents
//
//  Created by OguzhanYalcin on 5.03.2025.
//

@MainActor
protocol ConfigurableUI {
    associatedtype Model
    func configure(with model: Model)
}

protocol UIModel {
    associatedtype UIComponent
}
