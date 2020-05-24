//
//  ViewController.swift
//  Web browser
//
//  Created by Ashwin Paudel on 2020-05-18.
//  Copyright © 2020 Ashwin Paudel. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {

    @IBOutlet weak var mainWebView: WKWebView!
    
    @IBOutlet weak var searchField: NSSearchField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        mainWebView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.141 Safari/537.36"
       
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
           if navigationAction.targetFrame == nil {
               mainWebView.load(navigationAction.request)
           }
           return nil
       }

    @IBAction func homeButton(_ sender: Any) {
        
        let hello = URL(string:"https://www.google.com")
               let hello1 = URLRequest(url: hello!)
               mainWebView.load(hello1)
        
    }
    
    @IBAction func reloadButton(_ sender: Any) {
        
        mainWebView.reload()
        
    }
    @IBAction func goFront(_ sender: Any) {
        
        if mainWebView.canGoForward {
            
            mainWebView.goForward()
            
        }
        
    }
    @IBAction func goBack(_ sender: Any) {
        
        if mainWebView.canGoBack {
            
            mainWebView.goBack()
            
        }
        
        
    }
    @IBAction func goSearch(_ sender: Any) {
        
        let urlStr = searchField.stringValue
        if urlStr.hasPrefix("https://") {
            let url = NSURL(string: urlStr)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if urlStr.hasPrefix("http://") {
            let url = NSURL(string: urlStr)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        }
        else if urlStr.hasPrefix("www."){
            let urlWithOUTHTPPS = "https://" + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".com") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".ca") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".org") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".net") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".int") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".edu") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".gov") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else if  urlStr.hasSuffix(".mil") {
            let urlWithOUTHTPPS = "https://www." + searchField.stringValue
            let url = NSURL(string: urlWithOUTHTPPS)
            let req = NSURLRequest(url:url! as URL)
            self.mainWebView!.load(req as URLRequest)
        } else {
            let textToSearch = searchField.stringValue
            let allowedCharacters = NSCharacterSet.urlFragmentAllowed
            guard let  encodedSearchString  = textToSearch.addingPercentEncoding(withAllowedCharacters: allowedCharacters)  else { return }
            let queryString = "https://www.google.de/search?q=\(encodedSearchString)"
            guard let queryURL = URL(string: queryString) else { return }
            let myRequest = URLRequest(url:queryURL)
            mainWebView.load(myRequest)
        }
        
        
    }
}

