//
//  ContentItem.swift
//  DigitalSticker
//
//  Created by Brennan Stehling on 12/3/17.
//  Copyright © 2017 Avinash Dabir. All rights reserved.
//

import Foundation

enum ContentItemType {
    case consumer
    case fleets
    case rideShare
}

enum ContentItemState {
    case buy
    case use
    case on
}

struct ContentItem {
    let contentItemType: ContentItemType
    let contentItemState: ContentItemState
    let name: String
    let contentURL: URL

    static func contentItemsForType(contentItemType: ContentItemType) -> [ContentItem] {
        switch contentItemType {
        case .consumer:
            return consumerContentItems
        case .fleets:
            return fleetsContentItems
        case .rideShare:
            return rideShareContentItems
        }
    }

    private static var consumerContentItems: [ContentItem] {
        return [
            ContentItem(contentItemType: .consumer, contentItemState: .use, name: "One", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .consumer, contentItemState: .use, name: "Two", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .consumer, contentItemState: .use, name: "Three", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .consumer, contentItemState: .use, name: "Four", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .consumer, contentItemState: .use, name: "Five", contentURL: URL(fileURLWithPath: "/"))
        ]
    }

    private static var fleetsContentItems: [ContentItem] {
        return [
            ContentItem(contentItemType: .fleets, contentItemState: .use, name: "One", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .fleets, contentItemState: .use, name: "Two", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .fleets, contentItemState: .use, name: "Three", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .fleets, contentItemState: .use, name: "Four", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .fleets, contentItemState: .use, name: "Five", contentURL: URL(fileURLWithPath: "/"))
        ]
    }

    private static var rideShareContentItems: [ContentItem] {
        return [
            ContentItem(contentItemType: .rideShare, contentItemState: .use, name: "One", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .rideShare, contentItemState: .use, name: "Two", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .rideShare, contentItemState: .use, name: "Three", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .rideShare, contentItemState: .use, name: "Four", contentURL: URL(fileURLWithPath: "/")),
            ContentItem(contentItemType: .rideShare, contentItemState: .use, name: "Five", contentURL: URL(fileURLWithPath: "/"))
        ]
    }

}
