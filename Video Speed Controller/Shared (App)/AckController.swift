//
//  AckController.swift
//  Video Speed Controller
//
//  Created by Kyle on 2021/10/10.
//

import Foundation
#if os(iOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

class AckController: PlatformViewController {
    override func loadView() {
        view = .init(frame: .init(x: 0, y: 0, width: 500, height: 300))
    }

    override func viewDidLoad() {
        let text = """
        https://github.com/igrigorik/videospeed

        Copyright (c) 2014 Ilya Grigorik

        Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

        The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
        """
        #if os(iOS)
        let textView = UITextView()
        textView.text = text
        #elseif os(macOS)
        let textView = NSTextView()
        textView.string = text
        textView.frame = view.frame
        #endif
        view = textView
    }
}
