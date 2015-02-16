//
//  ViewController.swift
//  SwiftGraphics_OSX_Scratch
//
//  Created by Jonathan Wight on 1/25/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var model:Model!
    var scratchView:ScratchView? {
        get {
            return view as? ScratchView
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: AnyObject? {
        didSet {
            model = representedObject as? Model
            scratchView?.model = model
        }
    }

    override func keyDown(theEvent: NSEvent) {
        interpretKeyEvents([theEvent])
    }

    override func deleteBackward(sender: AnyObject?) {
        model.removeObjectsAtIndices(model.selectedObjectIndices)
        view.needsDisplay = true
    }
}
