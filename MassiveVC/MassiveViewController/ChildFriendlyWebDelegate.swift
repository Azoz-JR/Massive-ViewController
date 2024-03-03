//
//  ChildFriendlyWebDelegate.swift
//  MassiveVC
//
//  Created by Azoz Salah on 02/03/2024.
//

import Foundation
import WebKit

class ChildFriendlyWebDelegate: NSObject, WKNavigationDelegate {
    
    var childFriendlySites: [String] = []
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if isAllowed(url: navigationAction.request.url) {
            decisionHandler(.allow)
        } else {
            decisionHandler(.cancel)
        }
        
    }
    
    func isAllowed(url: URL?) -> Bool {
        guard let host = url?.host else { return false }
           if childFriendlySites.contains(where: host.contains) {
              return true
        }
        return false
    }
}
