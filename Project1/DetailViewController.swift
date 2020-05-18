//
//  DetailViewController.swift
//  Project1
//
//  Created by Yuki Shinohara on 2020/05/18.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var X: Int?
    var Y: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(X ?? 0) of \(Y ?? 0)"
        navigationItem.largeTitleDisplayMode = .never
        //navigationItemはここだけに適用
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}