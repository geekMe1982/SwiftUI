//
//  SearchCell.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 27.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import UIKit


class SearchCell: UICollectionViewCell {

    // MARK: - Views
    lazy var categoryImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        return imageView
    }()

    lazy var categoryLabelName: UILabel = {
        var labelName = UILabel(frame: .zero)
        labelName.textAlignment = .left
        labelName.textColor = .black
        labelName.font = UIFont.boldSystemFont(ofSize: 13)
        return labelName
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupHierrarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Settings
    private func setupHierrarchy() {
        contentView.backgroundColor = .white
        contentView.addSubviews(categoryImageView, categoryLabelName)
    }

    private func setupLayout() {
        categoryImageView.addConstraints(top: contentView.topAnchor, paddingTop: 5, left: contentView.leadingAnchor, right: contentView.trailingAnchor, paddingRight: 5, bottom: contentView.bottomAnchor, paddingBottom: 5)

        categoryLabelName.addConstraints(left: contentView.leadingAnchor, paddingLeft: 10, right: contentView.trailingAnchor, paddingRight: 10, bottom: categoryImageView.bottomAnchor, paddingBottom: 20)

    }
}

extension SearchCell: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}
