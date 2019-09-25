//
//  ViewController.swift
//  S View
//
//  Created by Emir SARI on 24.09.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import Cocoa

class ViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func shareClicked(_ sender: NSView) {
        guard let detailVC = children[1] as? DetailViewController else { return }
        guard let image = detailVC.imageView.image else { return }
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }
}

