//
//  TextEditorViewController.swift
//  NotepadApp
//
//  Created by Vivek Lakshmanan on 12/09/22.
//

import UIKit
import CoreData

class TextEditorViewController: UIViewController {
    
    //MARK: - Data
    
    static let identifier = "TextEditorViewController"
    var titleLabel = UILabel()
    var title_text = ""
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //MARK: - Text Editor Page
    
    private let textEditor: UITextField = {
        let button = UITextField()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 350).isActive = true
        button.heightAnchor.constraint(equalToConstant: 500).isActive = true
        button.layer.cornerRadius = 3
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        button.backgroundColor = .white
        button.tintColor = .white
        button.placeholder = "Type the Notes here..."
        return button
    }()
    
    //MARK: - View Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        titleLabel.text = title_text
        self.view.addSubview(titleLabel)
        
        self.view.addSubview(textEditor)
        
        configureNavigationforeditor() // Nav Bar
    }
    
    //MARK: - For Title & Notes Editor Layout
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true // for position
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true // for position of title label
        
        textEditor.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textEditor.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    //MARK: - Navigation configuration
    
    func configureNavigationforeditor() {
        self.navigationItem.title = "NOTEPAD APP"
        self.navigationController?.navigationBar.barTintColor = .systemYellow
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.brown, .font: UIFont(name: "Helvetica-Bold", size: 21)!] // why color change in first page as well???
        
        let saveBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: nil)
            self.navigationItem.rightBarButtonItem  = saveBarButtonItem
    }

    //MARK: - Save button Cliked
    
    func saveAction(_ sender: Any) {
        
    }

}
