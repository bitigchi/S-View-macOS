//
//  WindowController.swift
//  S View
//
//  Created by Emir SARI on 25.09.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    @IBOutlet var shareButton: NSButton!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        shareButton.sendAction(on: .leftMouseDown)
    }

    @IBAction func shareClicked(_ sender: NSView) {
        guard let split = contentViewController as? NSSplitViewController else { return }
        guard let detail = split.children[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }

        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }
}
