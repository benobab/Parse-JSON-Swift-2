//
//  ViewController.swift
//  GetJsonFromWSTest
//
//  Created by BenLacroix on 19/07/2015.
//  Copyright © 2015 BenLacroix. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, NSURLSessionDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let endpoint = NSURL(string: "http://jsonplaceholder.typicode.com/posts")
        let data = NSData(contentsOfURL: endpoint!)
        
        do {
            let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSArray
            print(jsonResult)
            print("et ensuite")
            print(jsonResult[3]["userId"])
        } catch let error as NSError {
            print(error)
        }
        
        
        
    
    }
    
    //DELEGATE FUNCTIONS FOR NSURLCONNECTION and NSURLCONNECTIONDownload
    func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge) {
        //TODO:
    }
    
    
    
    func connectionDidFinishDownloading(connection: NSURLConnection, destinationURL: NSURL) {
        //TODO:
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

