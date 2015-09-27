//
//  ActionRequestHandler.swift
//  ContentBlocker
//
//  Created by santiagoww on 27/09/15.
//  Copyright © 2015 santiagoww. Feel free to copy and modify.
//

import UIKit
import MobileCoreServices

class ActionRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequestWithExtensionContext(context: NSExtensionContext) {
        let attachment = NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList", withExtension: "json"))!

        let item = NSExtensionItem()
        item.attachments = [attachment]

        context.completeRequestReturningItems([item], completionHandler: nil);
    }

}
