//
//  ContentCell.swift
//  DigitalSticker
//
//  Created by Brennan Stehling on 12/3/17.
//  Copyright © 2017 Avinash Dabir. All rights reserved.
//

import UIKit


class ContentCell: UICollectionViewCell {

    private static var initialImageWidth: CGFloat = 375.0
    private static var initialImageHeight: CGFloat = 150.0
    private static var initialCellHeight: CGFloat = 195.0

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!

    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!

    @IBAction func actionButtonTapped(_ sender: Any) {
        debugPrint("Action Button Tapped")
    }

    var contentItem: ContentItem! {
        didSet {
            contentLabel.text = contentItem.name

            switch contentItem.contentItemState {
            case .buy:
                actionButton.setTitle("BUY", for: .normal)
            case .use:
                actionButton.setTitle("USE", for: .normal)
            case .on:
                actionButton.setTitle("ON", for: .normal)
            }

            screenWidth = UIScreen.main.bounds.width
        }
    }

    var screenWidth: CGFloat! {
        didSet {
            let ratio = screenWidth / ContentCell.initialImageWidth
            imageWidthConstraint.constant = screenWidth
            imageHeightConstraint.constant = ContentCell.initialImageHeight * ratio
        }
    }

    static func itemSize(screenWidth: CGFloat) -> CGSize {
        let ratio = screenWidth / ContentCell.initialImageWidth
        let imageHeight = ContentCell.initialImageHeight * ratio
        let bottomHeight = ContentCell.initialCellHeight - ContentCell.initialImageHeight

        let size = CGSize(width: screenWidth, height: imageHeight + bottomHeight)
        return size
    }

}
