//
//  BaseViewController.swift
//  DigitalSticker
//
//  Created by Brennan Stehling on 12/3/17.
//  Copyright © 2017 Avinash Dabir. All rights reserved.
//

import UIKit

protocol ContentContainer {

    var contentItemType: ContentItemType { get }

}

class BaseViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let source = segue.source as? ContentContainer,
            let destination = segue.destination as? ContentListViewController {
            debugPrint("Segue: \(segue.identifier ?? "")")
            destination.contentItemType = source.contentItemType
        }
    }

}

extension UIViewController {

    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }

}
