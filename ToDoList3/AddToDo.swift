//
//  AddToDo.swift
//  ToDoList3
//
//  Created by user1 on 2016/10/31.
//  Copyright © 2016年 mycompany. All rights reserved.
//

import UIKit

var todoItem = [String]()

class AddToDo: UIViewController {

    @IBOutlet weak var itemText: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        todoItem.append(itemText.text!)
        itemText.text = ""
        NSUserDefaults.standardUserDefaults().setObject(todoItem, forKey: "todoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        itemText.resignFirstResponder()
        return true
    }


}
