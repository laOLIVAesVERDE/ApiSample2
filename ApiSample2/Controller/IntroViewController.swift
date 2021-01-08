//
//  IntroViewController.swift
//  ApiSample2
//
//  Created by 本橋淳哉 on 2021/01/08.
//

import UIKit
import Lottie

class IntroViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var onboradArray = ["1", "2", "3", "4", "5"]
    var onboradStringArray = ["オンボード１", "オンボード2", "オンボード3", "オンボード4", "オンボード5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ページング可能にする
        scrollView.isPagingEnabled = true

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setupScroll() {
        
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
