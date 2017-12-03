//
//  ContentListViewController.swift
//  DigitalSticker
//
//  Created by Brennan Stehling on 12/3/17.
//  Copyright © 2017 Avinash Dabir. All rights reserved.
//

import UIKit

class ContentListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    var contentItemType: ContentItemType! = nil
    var contentItems: [ContentItem]! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        assert(collectionView.dataSource != nil)
        assert(collectionView.delegate != nil)
        contentItems = ContentItem.contentItemsForType(contentItemType: contentItemType)
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.itemSize = ContentCell.itemSize(screenWidth: screenWidth)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        collectionView.reloadData()
    }

}

extension ContentListViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        debugPrint("Content Items: \(contentItems.count)")
        return contentItems.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCell", for: indexPath)

        if indexPath.item < contentItems.count {
            let contentItem = contentItems[indexPath.row]
            cell.contentCell?.contentItem = contentItem
        }

        return cell
    }

}

extension ContentListViewController: UICollectionViewDelegate {

}

extension ContentListViewController: UICollectionViewDelegateFlowLayout {}

extension UICollectionViewCell {

    var contentCell: ContentCell? {
        return self as? ContentCell
    }
}
