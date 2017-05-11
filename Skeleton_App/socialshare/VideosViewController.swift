//
//  VideosViewController.swift
//  SocialShare
//
//  Created by My App Templates Team.
//  Copyright (c) 2016 My App Templates. All rights reserved.
//

import UIKit

class VideosViewController: UIViewController {

    @IBOutlet var tblForVideos : UITableView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSectionsInTableView(_ tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView!, cellForRowAtIndexPath indexPath: IndexPath!) -> UITableViewCell! {
        if (indexPath.row%3 == 0){
            return tblForVideos.dequeueReusableCell(withIdentifier: "ExploreVideoItemCell") as UITableViewCell!
        } else if (indexPath.row%3 == 1){
            return tblForVideos.dequeueReusableCell(withIdentifier: "ExploreVideoItemCell1") as UITableViewCell!
        } else {
            return tblForVideos.dequeueReusableCell(withIdentifier: "ExploreVideoItemCell2") as UITableViewCell!
        }
    }
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
