//
//  SearchCollectionView.swift
//  AppleMusic
//
//  Created by Adam Khalifa on 27.06.2021.
//  Copyright © 2021 Adam Khalifa. All rights reserved.
//

import UIKit
class CollectionView: UIViewController {

    var categories = SearchModel.items
    // MARK: - Views
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Ваша Медиатека"
        searchBar.backgroundImage = UIImage()
        return searchBar
    }()

    lazy var separator: UILabel = {
        let label = UILabel()
        label.text = "________________________________________"
        label.textColor = .lightGray
        return label
    }()

    lazy var label: UILabel = {
        var label = UILabel()
        label.text = "Поиск по категориям"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.backgroundColor = .white
        label.textAlignment = .left
        return label
    }()

    // MARK: - CollectionView
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SearchCell.self, forCellWithReuseIdentifier: "cell")

        return collectionView
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.showsVerticalScrollIndicator = true
        collectionView.reloadData()

        setupHierrarchy()
        setupView()
        setupLayout()
    }

    // MARK: - Settings
    private func setupView() {
        collectionView.backgroundColor = .white
    }

    private func setupHierrarchy() {
        view.addSubviews( searchBar, separator, label, collectionView)
    }

    private func setupLayout() {
        searchBar.addConstraints(
            top: view.safeAreaLayoutGuide.topAnchor,
            left: view.leadingAnchor, paddingLeft: 20,
            right: view.trailingAnchor, paddingRight: 20,
            bottom: separator.topAnchor)

        separator.addConstraints(
            top: searchBar.bottomAnchor,
            left: view.leadingAnchor, paddingLeft: 10,
            right: view.trailingAnchor, paddingRight: 10)

        label.addConstraints(
            top: separator.bottomAnchor, paddingTop: 5,
            left: view.leadingAnchor, paddingLeft: 20,
            right: view.trailingAnchor, paddingRight: 20,
            bottom: collectionView.topAnchor, paddingBottom: 20)

        collectionView.addConstraints(
            top: label.bottomAnchor, paddingTop: 5,
            left: view.leadingAnchor, paddingLeft: 20,
            right: view.trailingAnchor, paddingRight: 20,
            bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 20)
    }
}

// MARK: - UICollectionViewDataSource
extension CollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                            for: indexPath) as? SearchCell else { return UICollectionViewCell() }
        let data = categories[indexPath.row]
        cell.categoryImageView.image = data.image
        cell.categoryLabelName.text = data.label

        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension CollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 2) - 15, height: (collectionView.frame.width / 3))
    }
}

