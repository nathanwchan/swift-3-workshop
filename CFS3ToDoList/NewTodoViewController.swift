//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Nathan Chan on 5/21/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let userText = textField.text{
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        
        dismiss(animated: true, completion: nil)
        
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
