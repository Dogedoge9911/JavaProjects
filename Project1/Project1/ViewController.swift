//
//  ViewController.swift
//  Project1
//
//  Created by Jonathan Singh on 2020-08-19.
//  Copyright © 2020 Jonathan Singh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        
        let fm = FileManager.default  //declares a contant and uses a data type that allows us to work with the filesystem
        let path = Bundle.main.resourcePath! // declares a constant that is set to the resource path of our app's bundle
        let items = try! fm.contentsOfDirectory(atPath: path) //declares a constant that is set to the contents of the directory at a path

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
        pictures.sort()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            vc.title = "Picture \(indexPath.row + 1) of \(pictures.count)"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

