//: Playground - noun: a place where people can play

import UIKit

let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
let URL =  NSURL(string: "http://blog.netgloo.com/2015/07/09/spring-boot-communications-link-failure-with-mysql-and-hibernate/")
let request = NSURLRequest(URL: URL!)

//let downloadTask = session.downloadTaskWithRequest(request , completionHandler: {
//    (url : NSURL! , response : NSURLResponse! , error : NSError!)  -> Void in
//    
//})

let newDownloadTask = session.downloadTaskWithRequest(request){
    (let url , let response , let error) in
    print(response)
}

//downloadTask.resume()
newDownloadTask.resume()

typealias   JSONDictionaryCompletion  =  ([String : AnyObject]?) -> ()

func downloadJsonFromWeb ( completion : JSONDictionaryCompletion) {
    
}