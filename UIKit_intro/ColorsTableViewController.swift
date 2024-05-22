//
//  ColorsTableViewController.swift
//  UIKit_intro
//
//  Created by Nikunj   on 18/05/24.
//

import UIKit

class ColorsTableViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    let colors = [UIColor.systemPink,UIColor.black,UIColor.green,UIColor.gray,UIColor.yellow,UIColor.brown];
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50;
    }
    
    func getRandomColor()->UIColor{
        return colors.randomElement() ?? colors[0];
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let uiTableViewCell = UITableViewCell();
        uiTableViewCell.backgroundColor = getRandomColor();
        return uiTableViewCell;
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
