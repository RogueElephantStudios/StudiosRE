//
//  ActivityViewController.swift
//  SocialShare
//
//  Created by My App Templates Team.
//  Copyright (c) 2016 My App Templates. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet var tblForFeed : UITableView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSectionsInTableView(_ tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView!, cellForRowAtIndexPath indexPath: IndexPath!) -> UITableViewCell! {
        return tblForFeed.dequeueReusableCell(withIdentifier: "ActivityCell") as UITableViewCell!
    }
    
    func tableView(_ tableView: UITableView!, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView!, viewForHeaderInSection section: Int) -> UIView!{
        let view : UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 1))
        view.backgroundColor = UIColor(red: (140.0/255.0), green: (127.0/255.0), blue: (106.0/255.0), alpha: 0.5)
        return view
    } // custom view
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
