//
//  Services.swift
//  DropDownSample
//
//  Created by Preeteesh Remalli on 10/01/19.
//  Copyright © 2019 Preeteesh Remalli. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class services {
    static let instance = services()
    func getProjects(){
        
        let url = URL(string: "https://itgatewaytst.infosys.com/hivepjdtl/api/HiveProjectDetail/FnGetProjectCodeDetailsforUser")!
        //let request = URLRequest(url: url)
        Alamofire.request(url, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { response in
            debugPrint(response)
        }
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data else {
//                print("request failed \(error.debugDescription)")
//                return
//            }
//            do {
//                let results = try JSON(data: data)
//                let json = results["results"].arrayValue
//
//
//                print(json)
//
//            } catch let parseError {
//                print("parsing error: \(parseError)")
//            }
//        }
//        task.resume()
//    }
//
//
}

}
