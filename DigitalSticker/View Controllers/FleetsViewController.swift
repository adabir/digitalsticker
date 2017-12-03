//
//  FleetsViewController.swift
//  DigitalSticker
//
//  Created by Brennan Stehling on 12/3/17.
//  Copyright © 2017 Avinash Dabir. All rights reserved.
//

import UIKit

class FleetsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("viewDidLoad: \(String(describing: self))")
    }

}

extension FleetsViewController: ContentContainer {

    var contentItemType: ContentItemType {
        return .fleets
    }

}
