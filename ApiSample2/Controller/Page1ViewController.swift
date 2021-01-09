//
//  Page1ViewController.swift
//  ApiSample2
//
//  Created by 本橋淳哉 on 2021/01/09.
//

import UIKit
import SegementSlide
class Page1ViewController: UITableViewController, SegementSlideContentScrollViewDelegate, XMLParserDelegate {
    
    @objc var scrollView: UIScrollView {
        return tableView
    }
    
    // XMLParsarのインスタンスを作成
    var parsar = XMLParser()
    
    // RSSのパース中の現在の要素名
    var currentElementName : String?
    
    var newsItemsArray = [NewsItems]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .clear
        // imageViewをtableViewの背景にする
        let image = UIImage(named: "0")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: self.tableView.frame.size.width))
        imageView.image = image
        self.tableView.backgroundView = imageView
        
        // XMLパース
        let urlString = "https://news.yahoo.co.jp/pickup/res.xml"
        guard let url : URL = URL(string: urlString) else { return }
        parsar = XMLParser(contentsOf: url)!
        parsar.delegate = self
        parsar.parse()
    }
    
    

    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newsItemsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .clear
        
        

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/5
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
