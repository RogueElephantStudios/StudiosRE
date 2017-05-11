//
//  UploadFileViewController.swift
//  SocialShare
//
//  Created by My App Templates Team.
//  Copyright (c) 2016 My App Templates. All rights reserved.
//

import UIKit

class UploadFileViewController: UIViewController {

    @IBOutlet var descriptionTxtView : UITextView!
    @IBOutlet var viewForContent : UIView!
    var originalRect : CGRect!
    
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
        NotificationCenter.default.addObserver(self, selector: #selector(UploadFileViewController.willShowKeyBoard(_:)), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(UploadFileViewController.willHideKeyBoard(_:)), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func willShowKeyBoard(_ notification : Notification){
        
        var userInfo: [AnyHashable: Any]!
        userInfo = (notification as NSNotification).userInfo
        
        var duration : TimeInterval = 0
        //var curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! UInt
        duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
        let keyboardF:NSValue = userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue
        let keyboardFrame = keyboardF.cgRectValue
        
        UIView.animate(withDuration: duration, delay: 0, options:[], animations: {
            self.viewForContent.frame = CGRect(x: self.viewForContent.frame.origin.x, y: self.viewForContent.frame.origin.y - keyboardFrame.size.height + 49, width: self.viewForContent.frame.size.width, height: self.viewForContent.frame.size.height)
            }, completion: nil)
        
    }
    
    func willHideKeyBoard(_ notification : Notification){
        
        var userInfo: [AnyHashable: Any]!
        userInfo = (notification as NSNotification).userInfo
        
        var duration : TimeInterval = 0
        //var curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! UInt
        duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
        let keyboardF:NSValue = userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue
        let keyboardFrame = keyboardF.cgRectValue
        
        UIView.animate(withDuration: duration, delay: 0, options:[], animations: {
            self.viewForContent.frame = CGRect(x: self.viewForContent.frame.origin.x, y: self.viewForContent.frame.origin.y + keyboardFrame.size.height - 49, width: self.viewForContent.frame.size.width, height: self.viewForContent.frame.size.height)
            }, completion: nil)
        
    }
    
    @IBAction func doneBtnTapped (_ sender: AnyObject) {
        descriptionTxtView.resignFirstResponder()
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
