//
//  ViewController.swift
//  background-audio-bug
//
//  Created by Julio Cesar Sanchez Hernandez on 23/10/2019.
//  Copyright © 2019 Julio Cesar Sanchez Hernandez. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
var webView: WKWebView!
override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
let html = """
<br><br><br>
<audio controls="controls">
<source src="https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_5MG.mp3" type="audio/mp3" />
</audio>
"""
webView.loadHTMLString(html, baseURL: nil)
webView.allowsBackForwardNavigationGestures = true

}
override func loadView() {
webView = WKWebView()
webView.navigationDelegate = self
view = webView
}
} 

